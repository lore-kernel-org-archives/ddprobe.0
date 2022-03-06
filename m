Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC3C1FB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646562684;
	h=To:Subject:From:Message-Id:Date;
	bh=0cHo5tIxx37q59vZjfSWm7QQGOVulh57dQpRB2oSsXY=;
	b=Vkv3TQyM/gi67gFnsmc5YRDoklrG2R3CT68ZKOuw7kOHmlEWecT/gWnj7aiinQoN
	21QVz0Zzkr8UBb2tK+uu8TL3b3UJWwQKcqQfb0IoDkqNrYASGqDn/86WmQ0zQMcOhZR
	77c5uiM2cWZYV2dtqxHK+qH4TMDn1apElrsmhXIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646562684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0cHo5tIxx37q59vZjfSWm7QQGOVulh57dQpRB2oSsXY=;
	b=UVhw7m0ciBWmIEBKubfKH78CJcJ+9JdTyVOkangMyr7C+PzNUbNQFLOs9atYtWgb
	Hkl6jL6mGM4amTy1Eti+hpKHh5f2/7UJ62bYzzISD75rzs3x7kme8vFW/uh9Ph7/Sen
	ADSwebP7IWNyei6cAuqqusVnPGvt0AdWe7YzYsts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ec8af7b-482a79e4-0524-4fd8-855b-e228fa2c68c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfeb48cfc62afd79cb41b21159bad959d24d018546dbd1d30192bec3134ec45c
Date: Sun, 6 Mar 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646562684
