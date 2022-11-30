Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3D262A
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7645EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669791054;
	bh=CJIZPbcJC8eWT3+8Kft/s3XlT8ModnoM5mc7N3tydrs=;
	h=To:Subject:From:Date:From;
	b=gZgnifv4OZNOGooeU5GKxJRw8IPOkXdmiTUa5l1wS9nzFPzEJzqiRin6NWzKgA+ay
	 YT5PHwikQYlgxlAZ7egpNB7uyh7CHLTIo5/QVZj9MU4fGCAhDza6q3IZVhQDZQmG65
	 /U/FtGVl8bBbPdS8Swk5A+/7QTcC9OyPQROgWcsK45IDcyGKbgox9PiO65TTsRaEuW
	 xOT+5yz8t0ijL+6zWGfVbU01KIOxqMwSw1h3Jlk11Y+ZoduuNh2fWxuwsktXZMSKaD
	 GObsmlBLHdzC2Nrqs4c6K4EtljMLcnMGePx00Us74MSlye8P89i5sJQg2QgISpl7s8
	 Uo3b7gSP1KiPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584DAC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979105435.27012.5346308558581238309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32860db211daf1ab599b8f6bf9369617f2cbda19c1616ea66f1e221792577e50
Date: Wed, 30 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669791054
