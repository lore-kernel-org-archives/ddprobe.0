Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E58EC7
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658923252;
	h=To:Subject:From:Message-Id:Date;
	bh=ULSleYWMpw5VJT1rdXiyK6tXlsMkVqwYPGyIVh6eHf4=;
	b=HP06rBymG8ZyM40z7QsNxlhe7G5Ud/a+459ATAMKnOnnUTGhiDPTj4Xv/QD57YRO
	Vj79E/BNQU5396I/3Zhk5Y0WkwAxVD/3jTZO3kw5iq60gMhckNN60dTAM84kDPqSO+F
	FVOfc1V6s9YIDmfxO6AcWMFnjnnxRYm4kW6/ALTk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658923252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ULSleYWMpw5VJT1rdXiyK6tXlsMkVqwYPGyIVh6eHf4=;
	b=Zft+wvM4eTTRyfnK4EDVM78hZs29fC21XOdTTnMKUX/YYrA+veX/ZfzmdTA6rDKQ
	b+Yusx2xvGOWTokp6BI0/xwAqiSSFQbGcMvOrAo4sQWaBcu+8/ZS9BWvz7Wp/3I0yM7
	etfVszDLz+B4IwEvpmKJZBOAs/R3Z8R3onSGEVf4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823f87fb4a-b6ed402a-17d5-4d3a-8974-219979da264a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66b6a1ad2c755830143cdeedf32c970989f72edd83b4f88de73205c6f80368a5
Date: Wed, 27 Jul 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658923252
