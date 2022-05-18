Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60C823A3
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 21:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652909999;
	h=To:Subject:From:Message-Id:Date;
	bh=DoKWwIqadNBO5MDOplauCuosZG6Y1Nrp3U+D2VU+TMQ=;
	b=kXkcofNw8+hfq8NCSPaf+Q+9L7qZSMLO9GgKaRADxCpREcST1Jp5Tlb/TL0AlUVG
	F73Grjx6tBCoussvFGRnQy2U99QaHwvfgzsJHq/Pq0TzOCCzF/mRSe89ylqck/GU0K8
	7AVWe2s/2L/55mh7xdmLl1NXtN9dh40YbiQXOR+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652909999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DoKWwIqadNBO5MDOplauCuosZG6Y1Nrp3U+D2VU+TMQ=;
	b=Q7M3w+JQBh905voqCDHSgGUqzpq7F+c5ctvj37TeEYK0EddQLkXMjdN0Du+F06jU
	4lPhji0/N5GQv0MR9Ui+hXVX3ONZBjBpna9v1nh2Hi+AhaGnM4UP2EbPcN3XURMsycQ
	ZH67Hm723A0ANMIMHSQO1E1q+43Ycb113kEGbZrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d91d04aa-ad7607c5-dfbe-412b-b784-ae3e5a62e367-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b04382eadd74abcaf8fcc5e36ba4da9942e92768d75244c38993adaa6cce8b7
Date: Wed, 18 May 2022 21:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652909999
