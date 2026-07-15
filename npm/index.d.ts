declare module '@apiverve/shortcodegenerator' {
  export interface shortcodegeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface shortcodegeneratorResponse {
    status: string;
    error: string | null;
    data: ShortCodeGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ShortCodeGeneratorData {
      codes:   (null | string)[];
      count:   number | null;
      length:  number | null;
      charset: null | string;
      urlSafe: boolean | null;
  }

  export default class shortcodegeneratorWrapper {
    constructor(options: shortcodegeneratorOptions);

    execute(callback: (error: any, data: shortcodegeneratorResponse | null) => void): Promise<shortcodegeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: shortcodegeneratorResponse | null) => void): Promise<shortcodegeneratorResponse>;
    execute(query?: Record<string, any>): Promise<shortcodegeneratorResponse>;
  }
}
