Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A221852
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 11:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654427159;
	h=To:Subject:From:Message-Id:Date;
	bh=WrdOSWuP85koC40xsDBHPBKCljIY/AJXJhnr+hsK7bg=;
	b=KsxSQ8IvN9DJwsg1Uoxx2a+tvU1VBLQBYVs/XZ+/3T8nuVRKbJ52twQmuPQaA1SS
	L32qfWToSQ1d70YIyVr88S5qa+d+FOJsgEa3Zjx7uROPVDwZ6Ph7z3gRm+dwdcqpjGj
	Y0KoNvAr2h/MdBmVPYDxU6xfN8UOi6xgRFRc3S+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654427159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WrdOSWuP85koC40xsDBHPBKCljIY/AJXJhnr+hsK7bg=;
	b=A1PUSlPhpUTVtHnDnKMGdAa5btWWR98riRILz+kXIJ4lkbasyEIcTd1nsTYW5CsQ
	1CmI7GG566E7mu/5l43maRXFTT5vt31Xoy1jYgkqyvG1hEooTg6qqOnwjHY/nlfHpSz
	Mr5vHzYzb9GIbMFUwAoDJhpVK7Bf039BUsr2SdvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181338b0b4e-5b1e0129-50ec-427b-ac2b-0d9530218fea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fc99dfd690fe311ee9923e1a2f62e70b2fa26081ed3660dc4dfa34f4f6f95f3
Date: Sun, 5 Jun 2022 11:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654427159
