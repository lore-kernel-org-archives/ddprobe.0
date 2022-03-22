Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A962AEC8
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647969384;
	h=To:Subject:From:Message-Id:Date;
	bh=KyT8SRL/wNMJvemwtD5Kew3DYWO/UpRSju/YwX3eRTk=;
	b=defELtP6ROwNnWg2UXYvkD4+vWVNgjlbkCBWr1KDZjHiHF2WgQylynxCGDmzWwbn
	Uoi03vGjCXMpzGGhViMjIzRxtwkMALyGSwDlnvNprgSTJqyk00JKKhUEaccQMtn3MqG
	uAZ7YgC2fT7mmGrqckM4JfhsDKvSBSZaiGLQ7r1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647969384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KyT8SRL/wNMJvemwtD5Kew3DYWO/UpRSju/YwX3eRTk=;
	b=d1B5Kc7HfcdSWNjDJ81md9fBY2KwYU+TvTwKFs+nOA+Gdl3VSVz/zqgmW5tPJoBF
	RueZyneRyVeH0mO1nyzjoRf0jZdTo3laoev4Rdy4vAB0rG1whqb/1UIP1sNit1gmXUo
	D5sJfHK/NgTgsPXpdPRrw3CKUQ9jdeNkci5d+vEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2a13975-4c0285c9-51c7-4554-8ed3-87ff7ad85318-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef4b6442fddd204eda6656006d906455d101bfd6681620598ee7615a0485e7c3
Date: Tue, 22 Mar 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647969384
