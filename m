Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336BC10EE
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 05:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651986358;
	h=To:Subject:From:Message-Id:Date;
	bh=NIS8Ye99lgbllWB5HTH8BKxF5lI07GxRiGUWDsrGpCw=;
	b=HWNbwWR/E0DttZgMUBJGoewbtrbGu9rK0l5sZP7R9V/+X34UAlmeV8UNKhfVxvPG
	PwJXXi1AveTBlSXd7TZr7quDgkBHWdW8nkfNgqFpH1HIW2ru/UR1bTsX0ZA1scxOdjL
	eoGBwl3GuNgeIaJx82JljYWY7Eh1SXiHwwA4M/vU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651986358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NIS8Ye99lgbllWB5HTH8BKxF5lI07GxRiGUWDsrGpCw=;
	b=ahX458mqwisfUxSS0RsrH4vjKo/YcpQAGpK2pJeVYVcl4Q0lPBHa0IR5E2h0q5cQ
	Zw6CAy1RCDzbufjlcTRLWbOP7UnmaU3/t6rPsJ3k69/ztAfaOLg18jLj38WJWVoFZt5
	Md+ARhgGz4vQzGZ7EiJhHQnm/scC0sz5c1lfXUCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a20f6030-dd932cc4-595b-4914-b685-7cd14182ce77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d088fb02d471c18329b6584c9dfe04934a446e893d7c6be7969099dfced2383e
Date: Sun, 8 May 2022 05:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651986358
