Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A36C657EB
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645327585;
	h=To:Subject:From:Message-Id:Date;
	bh=RzS1HCDzyH/wU4/zG+mwSdtqKff7jAIfs79oyvek2FQ=;
	b=hOg0vlXq3weoeM4O4Af/zzFS6Zk7FORKJcSnC5tZZ1am+8BbyE6+Rz4y1YkAfeNY
	4k+8hNJXbprw1kEJ2epKfJWglM5NZXzsRXfyZ02IYFClcvGyCm/PhgJGHmQDY6jB5wh
	hXvm5vxQPdaiRPgWDe4DtH/mblH20W5eJfk+MEaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645327585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RzS1HCDzyH/wU4/zG+mwSdtqKff7jAIfs79oyvek2FQ=;
	b=BT/ozaE500viqHZoDEqhFkVnM++oLH6vjvdqc9tCuv6xX+YhuQhk6xTpLgFcz/vw
	qmF39iekxlKpyMQxLmWSqbZdbQheU80G302PFG3+996/xpPoYti0xh5cvr4OlYKL3oq
	//9mMU1RSpsAm5fEtRwkKo5kRBalMQ2VILepq3S4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f152a8e3a-f0c33eeb-7cd6-4237-852c-1b7f527cc5c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21394c8c5f682d232bcfe304a0e7d67097b6e3f1dae6065ecfdc9478e7747763
Date: Sun, 20 Feb 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645327584
