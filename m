Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5D97A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 12:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644669621;
	h=To:Subject:From:Message-Id:Date;
	bh=/FxxbasIGwAqqVKi/YXRZ46LZF7DP9DVdXf5LmozAtg=;
	b=jdfKYfnTwO+bTEfaciEPdCdEERoznGgRkNRKzul2VqYWnygsInE12+OWGcngPc0y
	KuoS7zC/FNiThth0OiJMGdZX4QtQ7lrpqqwiD1BzH3cshBXvhsk8sUOSqUyPCfNGLzv
	u0e0Scy1iMChPJTT8nl/vsssAOko901mIieoaBuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644669621;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/FxxbasIGwAqqVKi/YXRZ46LZF7DP9DVdXf5LmozAtg=;
	b=FaId3383wyUxDV3CQm/6N70TIOGnkgy277FYJgNf7wzJHlAciInbeFJF3jE0puAc
	Eub94TkzOAJjA3e3z2Hw9lObjoF4H8SvBIXV1qIIsS7RVr4gFaCmQ7ZEGXqn+py1O1w
	6kEK4yeVkp0EgoeCzisexHwZl+aeKaQ1ETJWdOfI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eedf2d4dd-e41a280a-a5c9-4782-b4d6-eb256236f45c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a808cdf7e0c823b3658ff48ee71e320013ffc2137a3773e3685a513851e9906c
Date: Sat, 12 Feb 2022 12:40:21 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644669621
