Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A205B10E1
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646525184;
	h=To:Subject:From:Message-Id:Date;
	bh=1J8O7DnBd7C3tcfMqJvlShYmhEi7MQEDkhSrdtxQBYY=;
	b=PFG9DIgAdV+8icEKeJNlgP0GkRXpM1ZKGt4qwf9gIOl2YWZ2UFJlpQmwBzIa4cDQ
	hOF4c2kM4neYLDQZ4Oif3SwHwG39t5Rlb/0sGw3YVWVU9UpJEz7V4VIgV8UHfTmnMB8
	/rq9MdPzaVkcHPSwcCnHUf49XswIQ6zkUyJevMR8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646525184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1J8O7DnBd7C3tcfMqJvlShYmhEi7MQEDkhSrdtxQBYY=;
	b=fgLCiqkJHAmqw3MxtZ/OQgHkVTGKADdCSnlk2fsu9hMCle4mqDWlEQ83ZcJ0P495
	tBsbastzWkIPgGyamvvUSyA8Z2o2yHZDyv5S+FzM3hCeHIuANjTwzVYI392Bautq4M0
	OM8E4YDS/sGJppUik+jo7gmX09RAYsJ16D+0vyUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5c8c7b0b-4ef1d003-e755-4a6e-857e-af6ba011a5a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e535d2f17ecf198a1c5e35ebe9bbd2ca02b3630afeb805a0cb14c7f47f79cfd7
Date: Sun, 6 Mar 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646525184
