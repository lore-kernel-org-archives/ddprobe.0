Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618946025
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657055812;
	h=To:Subject:From:Message-Id:Date;
	bh=lz2dzg/4TdWCFsjcXDmmZ6Ozea4QdGcMbfb8RUxiQfk=;
	b=fE1k6al8bMeSAqM2H7khhtTO7dldB+LrL188AO4kmCDCuTGOAsLdi2vSTNKoQsY/
	ndSPdkDfl22JVnN5eNUvFCRtuK2fp8BJdSl8uqSYeWdzetkFDEz4zWZf8sSYOcfoGe4
	xG+FDipK/rP0mwz3xgGVf3MSbeBfsK1HtvOMMEt4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657055812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lz2dzg/4TdWCFsjcXDmmZ6Ozea4QdGcMbfb8RUxiQfk=;
	b=RGTeP/O+e1XMXY7JGEM7RIE4TpuOpgBMcPJ7wj7M/D3n0Ln2L8V7SUyyn0Dv4lBi
	U1tlvxM38NwPpqDJ2BRCt2ETq1evVHzz2j4sn3EtQl/wwbYj4zWMmIJg5WOEy/S437f
	W9nmgUk+rRy99bfl1IF6/q35XMGCd6wIPZM9DtjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0391acf-2896a3f5-4a04-45d5-b2a2-355ee9c9ab0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 369931f0615719600662e35306dcc0d7c164e78d2ca271cd393e30ca5b7ee508
Date: Tue, 5 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657055812
