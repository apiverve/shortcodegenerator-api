declare module '@apiverve/shortcodegenerator' {
  export interface shortcodegeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface shortcodegeneratorResponse {
    status: string;
    error: string | null;
    data: ShortCodeGeneratorData;
    code?: number;
  }


  interface ShortCodeGeneratorData {
      codes:   string[];
      count:   number;
      length:  number;
      charset: string;
      urlSafe: boolean;
  }

  export default class shortcodegeneratorWrapper {
    constructor(options: shortcodegeneratorOptions);

    execute(callback: (error: any, data: shortcodegeneratorResponse | null) => void): Promise<shortcodegeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: shortcodegeneratorResponse | null) => void): Promise<shortcodegeneratorResponse>;
    execute(query?: Record<string, any>): Promise<shortcodegeneratorResponse>;
  }
}
