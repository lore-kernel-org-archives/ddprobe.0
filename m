Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F9736D
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661053252;
	h=To:Subject:From:Message-Id:Date;
	bh=nXwUivoXTQPTInPl/PideK1GQw55aeHg9dMDHmn2BgU=;
	b=YH0/hNEdixzP/6xKB4xD7wlsog/0EXuwzdhjcTNwrhSQ82wX9AuSeCPe9nh0iowd
	KtOdOOPT2Rl4NDve0q2y83AZPQ5OoslFoNVcEjPXIJcmK+I+mc+/zCWOs1BIt25ueUm
	pyshdldHp9k5siRQOqJPBQXwOYuoprv0P/mRSA/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661053252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nXwUivoXTQPTInPl/PideK1GQw55aeHg9dMDHmn2BgU=;
	b=DruR2DbQEFD2TP8RLSJNg1M/1m2VTybJXX5Qt7JUGu2+ZevSJTFMggSzH5DFLl71
	y5IDKyaO5Dl+zMDDqQd+bleg3bDVhVonIPqEn5CuXOcMW/4Zqq2j7S3wOEvEPtCKIdV
	FzvJd0JC8P/q+BCU0RbOVioK/mtBjM3IIYxyWHOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182be7d33b1-88d5318b-e6c6-45e5-baf8-5050df5ab47a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a9e3a3c0325f69645c38b12731da4bf83fb818db1a71a0edf6a1a8c1252fa47
Date: Sun, 21 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661053252
