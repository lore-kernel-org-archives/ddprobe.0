Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEC4322A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 22:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17B6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 22:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674599585;
	bh=Zs4WjQ4k9GReRd6ijYZoKNO/LVDerBqF3UhFNiYMOfg=;
	h=To:Subject:From:Date:From;
	b=r7x2bWF4KmIjKDfPNS+JVHgyOuzY9GjuuZasL+EbtW/BTKLbh+ELbiR/dDP8WArUw
	 4zuZvfgrQP2OJahT4ex86/IpG2kCHoPQ2juqVyig3uZQW9eOEZSJ2eGDkh+eVGZkTw
	 jp0ILe/MAqUlglX0e6/naiuVsrd+iq7BVv6eddkVuc9T5F2nwEowdN/HWMSGFFnXvi
	 lpeFYF+NB+w34fMkpHGZJkduk0tbawYWBixbL16Qne/9tbQ/ZUrHdwFmzMI157/kkE
	 JqfJTrlgMb//N35Ws3Hu+T6Fw1mPiboS0jbLoPcFXR9ZORIOGfwQYRSOE0yJfkrmZ2
	 yaY5fNCm/02Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E1FC61DA0
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 22:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167459958574.28341.14104105405336731817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d4d2d579d1b1c743d7aeac68a2e30c251877c5c5a2156821bd3037c29734c8
Date: Tue, 24 Jan 2023 22:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674599585
