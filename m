Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01458C06
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A16C433F1
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674078087;
	bh=3CHkjB63dHGhMI8tbzL4igpi5W8i8ABzcUVP4kKEqKw=;
	h=To:Subject:From:Date:From;
	b=GVFbK66q9pop9pLSKPYeMkejsL6LVG4w8yzSfAT/Om0tl2MTToqcBRZt6gFTJeFTn
	 Hx/u/u1JXG1U1TSHD/m7m7yv7De60AE6P6dfpQJuFnJCWlv4wSJi/OnbFFkwSvo+E3
	 OHhR2uly5Z1qSbjd9yEUMEpvIYsOx9WrrbSOy0/FOx6v5DGsc9Gk9KUq5+sZ2dU0q5
	 4DVKNlb6jufCz2Xmczq68ftquX4he3j+iIAirZZw8lRHUv0T3n7QzXoamM3FB3IatD
	 y4sY7npBDc30sssuSpeuhWuXJ0ePIg6QDt6hc9D6LQQEkcnphhyHN5BzouBBr533Ot
	 IlfwRTq738pUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BF40C54EBE
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167407808742.2183.10799527232762290004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8174c79532e2ea9e5c31893d6f6ce907a978203f76b2bb6e4c954aa5c183ff1
Date: Wed, 18 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674078087
