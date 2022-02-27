Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC8A7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645964484;
	h=To:Subject:From:Message-Id:Date;
	bh=KjPLUj/1nllsWFVRi3ILwOU1N7iwDA1IbGOkizh+D7s=;
	b=QmesIPUvAXY4oT0oFPTGMFuqeMCD/ZNebPbLMpmzEEOIaT+p3nqiQJIX5MAzDw7G
	CJrHDT4imqKTRMVJezGWkiK1ynqdcUeL3iDlPdDHirk6kC7Ob+Yd4uVrzt4UjqU4Ul1
	PiBHQR/12UZsNhGKAI4XNTKHL/w5zatM+N9iH5FY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645964484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KjPLUj/1nllsWFVRi3ILwOU1N7iwDA1IbGOkizh+D7s=;
	b=d6z25JnHSP+zyEYbhPSYy67plcD0EQSNbGYWZWE95fVuPCER2D1X0m+W1S01jqKH
	QzfjkZ36rUoqPA2FXmVTm51EITZz1mOSYAJjuwQAb2S6dEwHuuIHa1iJ16U2zmw+9zy
	lW4EmxTRUG0rLsCpGor5aBlZbBwgJtNE8QlH95S4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b20e0b7-109c3a19-7f98-4bf9-bacb-0fbfc9f86af0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 743032cf36acf0b6b908dfd852d8cbda52e82e44a6b8bfdcbc9afa099b2198f2
Date: Sun, 27 Feb 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645964484
