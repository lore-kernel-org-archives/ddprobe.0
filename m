Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248FB7C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 22:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654813799;
	h=To:Subject:From:Message-Id:Date;
	bh=DX9V0kBnxL3JBXRg9oA4fcHQKx45r36tXDsya1t489o=;
	b=UIqav/i6nSEchZS07qE/yTMT2VvaD4hB8ZUTGir+iCDDgq9GAfex0G5CfkHUVcsJ
	Hd0Ak5/SmcgYYBg87le+q1AmmRQ8v7E5872UkgtSrzrcZt98lSLZ6HW2ztPWulp7Wzj
	UYJH/wJyXg3zwfJXA3xerhSlvnVqOuat7zno0xDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654813799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DX9V0kBnxL3JBXRg9oA4fcHQKx45r36tXDsya1t489o=;
	b=SSty1KT5/DqnkAPL50rT7a+k4c74E+bRFpxB5+2D1d0ea+Thc0ScUcoKkB/1N+Vx
	gei1JGl21PlYYbK5yOVnZEAUGEMWYy+01wsFts70A+KOafzmT4bKe6dAC9araPD1Rem
	mFuUV8GSvj6UBqrdBN0vyD9KrfkpwTSBvoJ1x9NU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814a96b340-78d638e7-21a9-490d-b02d-1bf72b11d2c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da663e2129504062f12cd5f7552ab26f47ce08ba2a1bbfced86937b233d4ff76
Date: Thu, 9 Jun 2022 22:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654813799
