Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B239E7E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B1ADC433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669178454;
	bh=J1MiQPnRR23L39hPZWAftVG3aGyGALCCqE4dubBWbG0=;
	h=To:Subject:From:Date:From;
	b=jHrNNTUPZl87YRX5Ix5KpwpCHwNCFTN4y8GaePzTGKAlVESG0JR6KdlJW6j5yGQAF
	 9mEZ3OvrxV76l7Bl6k43UR2foxqfJIQJHTdAePbZM4QFS514r3h/cLXTwFw+a+AoBt
	 uV66X+NS9epqyG02nRYo2IpIs2hA8gLHZTt1OSOC5zMob5lyVXA+DNj2iESxajq7yC
	 eum6FXhJ4vipfHUCKtmf3X18LckxD1kwQayrUmduxW3QmJbR9X92nIgWhzUeaC6kHJ
	 fbMTvx2iKxfIBknVCyAXkBajkIkHhThn9sEo8HsnfppOqWvbzFxsi2fwv7Qg025hEd
	 1SA31Egr1R+2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D0AC4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166917845433.30967.12321202824746462589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19af3632f16218357611f4336f402bf617c3c449f1fa6a0241a0df3a7dd71a6c
Date: Wed, 23 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669178454
