Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926B720F9
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645424484;
	h=To:Subject:From:Message-Id:Date;
	bh=KYSmxeVk4WrpJU8fov36WbL1ktpMQyjJfX8dDznD/jg=;
	b=KoOKAMkBTul5gk3j73g2OPpTztYJYBuEjtoqzbQylEwzve3lk8ao+T3TdbB+j2cN
	swxMq1xSaFFpXD1zVXeZtZeReElSAKkhO9BrKi6Iv9X2blJTtc7aSwPFV4RW9g66tE6
	kR8gIhCA4xwkg6KtcYQFOZEvgk3Q2n/P08ZqGr/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645424484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KYSmxeVk4WrpJU8fov36WbL1ktpMQyjJfX8dDznD/jg=;
	b=AJ0D5Tw1NWa9hvCyV7tSPfz0QRMtPSx28zUFJmcut6SztsbxnOUyZzNaVxiYG+Fw
	qk4YMS6xt7IwVa9v8jzESRG4izqLt9SMNpyaU3tuoy3PqcZWHWQKXtwTDeYMMACj3ix
	iX1LJbZwn6y8xDnevmmmiJreJkD8jbR99e9ZKcwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1af121ac-39c7d884-4ecb-45e3-89f0-deffdc8e9d44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41f1d66c0682e4ed348081429e3c25b479c20bc8d64e11bf102ed25f700af407
Date: Mon, 21 Feb 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645424484
