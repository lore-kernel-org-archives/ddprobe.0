Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7B87B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 02:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651198558;
	h=To:Subject:From:Message-Id:Date;
	bh=+AfoGKNaHEdQn2YzwVLh4WVByLuFGmCgDKPaPzlW+g4=;
	b=Zs4BesF/NcTsmosu3aHlPuBesjpKuqOXcZvVpbB2MUCimgg7ux/1dh9qk0Bctngl
	Vr6yk7hxwKB4Da6FiM7MQxDNcK+Z0jiNZlcDzQW6f7GsVYJ2VYYbsK9ZBm95F7q2L6B
	TIJZQ5m5VGXp14boKo53bf/xpMz9mvuTXRWTaA8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651198558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+AfoGKNaHEdQn2YzwVLh4WVByLuFGmCgDKPaPzlW+g4=;
	b=Z3pJgvzxUo6i2zkUb1Xo7lO7WwWlzHL3s0Bl3UrAwF7OjqyTcfLpyITc48dHcCJc
	xj0iEGCSv+/v5yH/JHuaWVjmUOIMQP2FREz0Utkz3r+JlEGxW4GHi6oXSZUGId6NLoJ
	n3S6u+2BrRmjG8grK8aU8ogPvfLZDjupiK/1zqPo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180731a8060-58be52cb-03af-440a-b3fb-a31b7ce79797-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5da21f1367d4ea2148648e952ac98d6c547a933ccb094d2bbe6290f0eca79f5e
Date: Fri, 29 Apr 2022 02:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651198558
