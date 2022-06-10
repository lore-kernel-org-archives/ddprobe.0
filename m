Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5762F4A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 21:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654896599;
	h=To:Subject:From:Message-Id:Date;
	bh=2He/YCdF6KSzPYD2Q+DS3MJlulpTbipyRnV5p7ORZ4Y=;
	b=VozAD63g18fScHxnoGBf+poeGgzF42x+A6/Haxt1qFkt+SeXiBZE0SRgpVj6Smmv
	9YE0G5OyWsfmYN9sahBfukCQr/Z8fRzRD4h5R2zgnFuh85kAh/EeSumB5+rOrcBPLIp
	ihu86rosmCDXkJunLooclWal27hpv0mhsbRk4C1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654896599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2He/YCdF6KSzPYD2Q+DS3MJlulpTbipyRnV5p7ORZ4Y=;
	b=KzaWxIIZ/38Ia5UwPfDzIagy1yS/A92RUitk3mCoS5gXZWygsvmG00M2SWTxIc0C
	25NtLaOeZSnhJuLoD5484w4FpVN7NYGphmBH0Fw/G/7lGPFp5TKavqe6rBgaVyMjYKt
	uSfQOouNwZggUB3nwk94UIfJPvRS+/vDvjIB7bkk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f8620fc-50a1ce45-fd57-4caa-a4e8-0f3620141457-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80bbece7669dae0eb35788cde2fed234a9603891f8b610ff7221f885ebcf4af5
Date: Fri, 10 Jun 2022 21:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654896599
