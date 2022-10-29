Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE4615B2
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 773D7C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667018454;
	bh=jwCwNfcSMsKJimm2yCs0wrP5uXjASOdMpdcSsipNbD8=;
	h=To:Subject:From:Date:From;
	b=Qs0CvTo5CnIpH/Bwscqd8LrF6dTNICzFwu/9RjZE0qSsJyNAZtaLsib2AK7Sk8N7T
	 ZWItFinsnHY7BR/MBB4Kz6z4K6FW+ROfwHj72TtVeHY/2zPJF4r/Kc2W3TER3ZEGO4
	 42wWGgh96Zu5+Yd2jtxLxJYNW3nb0zO5EotoMBlAMMOl4PkzaVA4zsvtNKK5X1SK2L
	 4sJHumTKzzGdyPungkSygUV5+jB03Tl8O4/xn82XWg9n/BQJNLcX3bcv74gJBLzG8W
	 W84MIH0o61OaDZbxOG0y97wGqbXIlyJWl9IxXaJK0eNWNUQAvQDj24woKYxMNDDGzR
	 5P2OHKkGYIlOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 594B8C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166701845435.27593.4871423887965205612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a993cbd23d3104b5062046b500db40ace05cb432d7556c002cace64a0003a54e
Date: Sat, 29 Oct 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667018454
