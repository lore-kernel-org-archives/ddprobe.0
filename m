Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637842C9E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647854484;
	h=To:Subject:From:Message-Id:Date;
	bh=FBp3iROX5Ey39F6puCeeGFAjWvTUv+XljAlzdcCFrHM=;
	b=NgPk4Mqbg9j/6tiiwVOyHkPx3BbbtDUC0val8o/pdDDT17OqylONBW1EQTmOcfh0
	qY2p0uuYS/kC6XZAVSHO+kM0xZH6e4zDLHtb8B4g/J+/X/FT7Y1ZFBb0NJvckdaM/nZ
	XngV+vnjnTX7Zn/6/x42Hu1xv5gQTgk+Z5iCXG4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647854484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FBp3iROX5Ey39F6puCeeGFAjWvTUv+XljAlzdcCFrHM=;
	b=ZXd0EB20eQtAd365m5Y9fMb8AELXlaynh5ZpFKQuFAFi4zInZ2YFW8pp5M2L0Imt
	7Lomua1cTCrrbPKocZtPfdxOz6nY8VIR0uTYOmTqlptiTpAZ6kbu1iB8drjPf4xnacG
	52Biy3yRgB7Xa75L2RgPrVUsa4aOW7//JqPcaAxo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fabc7fced-7216745f-98fd-443c-ac89-dfca9b71f0ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2504838a8f9f6654c9d9c4e768cf6348ea95112e83c852f79cef66e6d77c6f92
Date: Mon, 21 Mar 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647854484
