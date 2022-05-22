Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2859317C9
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 01:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653181979;
	h=To:Subject:From:Message-Id:Date;
	bh=pFcHApNbcFp48PJhZjLFFvxfXc9pRh8/a6YDp1Rguj0=;
	b=EfxyIstuex0rPAERkqeMc62gqvrYt2YaIOvXbh25iBj8KCDXoVY265Ddar1Q9prV
	RovM8aJHerzP4JqdU4LhB/OjOlIu7k9x7GFukvbgUrcvqb+fOA0RZrQSMIudDSTNH52
	2vpFWEYfVRECdu4A0UeEiyAAVGm1AYDrBVJXncYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653181979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pFcHApNbcFp48PJhZjLFFvxfXc9pRh8/a6YDp1Rguj0=;
	b=Zd+dmAEYaXYZI8eCFbNMV5agcjIpTY/mJymysx3yupKLbdVLo739uaQxCjZkXgND
	OZG3BWUPmKNSL+lqiPglP3F0V2c0DhLBzFmDMVn5uOkNhvq/LeokSF1qYM2kUg+6T77
	hja+Rjh2lDJdeXo2Y9pEt8Ve27IY+tT0upegAl4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e9531ad7-58ae55c3-53d7-463b-9e3b-30016f1ff8d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3c34c4588f07175452ab46173ff4ab5d6a8494f8dc4bff95d49cce1f472434c
Date: Sun, 22 May 2022 01:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653181979
