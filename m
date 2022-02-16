Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C401368B
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645042285;
	h=To:Subject:From:Message-Id:Date;
	bh=FuaapVEOeZCtKUjVfZF0wkkCNq6eQvIe9mQf7hueq0I=;
	b=RCJ/Jmn7zns8At8GSer26OxAc3eRaGJCTx4cvjrAWIEGuHS+h6JpEz26w88skMho
	Xpd8iKI6DE/11qkB8dhuPH5YSnluYl1Ue6e0Ezqc/jZm1gwR24R1SfrxhudhlNheoIp
	SFPJMKIZTRIQG+r1eZoPE2QS7Bh5WHg/+4vbMgnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645042285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FuaapVEOeZCtKUjVfZF0wkkCNq6eQvIe9mQf7hueq0I=;
	b=g3CnY/oiHJIY/YTwD6+L5aMtB2jWRBkm94w0F4vxcXbKInDYUaZtjZ7sPTaVWM4I
	r0fw6LSGsVwths6Xdwn1iU1/ttu1Fq5JXoa1PtLP8NzYY5hS+1/QOkivArmJE8vOw7d
	+GJXVjj5+7SUt42WtvCslvr9HCt4c5IyOscl3cqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04293969-845f0f2d-6c0f-44f4-80fa-49c14560499e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9403d6785a5ab526cadf90dc65b965a4faa5dd22ccaf6625e4fad8b51721badc
Date: Wed, 16 Feb 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645042284
