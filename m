Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCAC48AD
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645174585;
	h=To:Subject:From:Message-Id:Date;
	bh=UzoLcOp5Rdr3l7ap0sf4uPiOS7mU1tnSkaLS4XZaAO0=;
	b=mXACV7aYdyO2RZCnuloSbz5+7qx3yrx0p/9Yb8absWEbgEwWxSxthjo29AbJAOcG
	K84FBXNXPsJ/vl59NCR/071TJTFjSj3vSJld9i0nDlyIC/zhiYpkVqxI47cR0GZNUOv
	uEHPFESegOf4HS+Ne59ZOCDjBR4c6zScgV5EeAEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645174585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UzoLcOp5Rdr3l7ap0sf4uPiOS7mU1tnSkaLS4XZaAO0=;
	b=IGCWR4xQHiPhKHREc0Nq6m8hSA4TGtf60X2ZQUzpP+8lDRqVhXetPfm7JwsW/pEU
	Mx5XrWN2Q/fIGliDp7axFC0m3RM5RqzkDG4xFlrjWA9C56WK8/gnAtQn0gn+YDMB2Z4
	iifkq893he0w7C7D8mAxj27h1px8d/BptMXADDV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c0bf5d4-d106a3be-72a1-4ea6-ac91-2a798a1ff7b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 229486a15c79f153b384e0b72f8df2e18856efc03b8636119de4274c39a07cad
Date: Fri, 18 Feb 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645174584
