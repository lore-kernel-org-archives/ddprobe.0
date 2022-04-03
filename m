Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D898E7C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 11:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648985098;
	h=To:Subject:From:Message-Id:Date;
	bh=sHsSrfFTsyb6CEjmNC9B0SdMKUfHHffw5Ad6Pdpc+gs=;
	b=eD7cal2I18+/XF/x3Nbb1G42wiVsQVPXHegkQmYnHzvRLMKrXJjiNTgwqVM1Oqem
	I/SBKLDUSkd4WgW7Aeb2YONFMbMtsP9Dyney3/5Gvd2DFCMvvOnBvkt90PCXr+wj4Tz
	NJ5oNRiA7yDIswd6CwZwfrkvcHTUakVJ8AwPYRww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648985098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sHsSrfFTsyb6CEjmNC9B0SdMKUfHHffw5Ad6Pdpc+gs=;
	b=f88zrp9vapV+hb5FF02+LHjl1PiEdAYGh54qzaJNuQs5eFJtSdsapQeeEcLeTzyR
	OgvL5v/besHPxH1l+iYeYnl1tliworR4feyCmeoZzUM5maWLga3c3YOWR36osYl5y7v
	EgG11mVS8UGlyiuKCw6wcqpZin6IGty8st7Y4m7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fef2bc839-4d67c81d-3ec4-41d6-89c1-609e802bef40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66ec0e677625a0949e619c310ea11d4173dd84dee3fd50ed17df513d7165c533
Date: Sun, 3 Apr 2022 11:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648985098
