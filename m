Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79EF081D
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644929184;
	h=To:Subject:From:Message-Id:Date;
	bh=lZRgrSn4ul1LiCpzfaUJOo1V0851clOVxvEMwxOhS1A=;
	b=EmNZRsl/e/orj2J8KV545bjbNWL/M+ccbXKD6GSWqDSRWc0J7wUXVoNZ1GoXmR4Q
	PmXkoc04sFV+KKqBoyr0t0xJLnGyqi01S0Hc+ddYtQpbwI/KkJCLSDHpmjxyMB2P1Ej
	TKHoSYyE/zYARr1X5NJaZgof1CRagEEttwVf7xsw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644929184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lZRgrSn4ul1LiCpzfaUJOo1V0851clOVxvEMwxOhS1A=;
	b=IRRFX4QzEiP2R9mPziVFycQPTyrju/XR5irNq36bheokWHyqm84jyMQgdxvq4THK
	9TvH33PRhRyG+UKv6HuECtX/II2iD80aYME6kWwN/9bw5FQHifvLfc4yTyC1mi04isi
	pab8Yhrdk/n6eZygE0W8DyGydMI/dfGCpDdb7QOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd6b7407-f14b6bfa-de6f-494f-89f4-f9f413ad7e71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f798a19059377a73e261e1b23cec844bcec0ec55836277ab74a599356dbb4d5
Date: Tue, 15 Feb 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644929184
