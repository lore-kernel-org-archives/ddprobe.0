Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B916AA5C
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B77BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664454653;
	bh=U+LrhQfra+NOCjrswxarV6KFZmOzCcmiVNtxaV8pOwA=;
	h=To:Subject:From:Date:From;
	b=Wgs9unNCBkcOmnnEu7ALeXLHmzWl8icefw4hHSL3NzN+kHBqsGCq610nZ7P4Hnpqn
	 t+q5UmZ3BEF/ReHlMoarDzwEWRCebde5nU22XZO+ihQvN2EHNGnudA+SdTWdTzqj6t
	 xeszAL/qJCj9j/aSxYdNEZzespBlLAK+zrmdvEjpPZanZVUKPUoqrbxS+dUTiv4Y92
	 BB3Z0r+sVrnk6qclhAKqqufrjAUOi2e41vL0DWcpjZ4+JE/RR8sW2szeIM4e0xYyON
	 uGej2dqr6vlVe30H9zansVUZ7x0BN/cHL93Y02FR3hWtsGsH3Xa7bXCfQ7mcvgBf6v
	 aLtGKAyIXxOyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E6D3C433F5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166445465331.28242.4005089250500895449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63fb8c73fbcd40b1dde35a2260f32719899d6d932a816c3fe3aa2eb1fd092d6
Date: Thu, 29 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664454653
