Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67355522E
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 07:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opCITK5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE50C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 07:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696748828;
	bh=3f16DCrf3521wRxoWcxP2V95VtZLqtimQ9RdNILdRd8=;
	h=To:Subject:From:Date:From;
	b=opCITK5M6ArDF5aNJ9mEk9UQZxKkyuZ8KV2DBu3pinVlMTu9EFjKSZQjbCjBXdE0k
	 tmPGkiOVUkQl06BXt9svSn9z4bR+LHhQtJVe36tgSDm9Hz83vYnVaiVwo5+uH64Dbv
	 ttZn7h021gHClNYm7GaExebortB1Pd33LE8mvvkB5qr3/IdsFG7dDHqPWvOHNbQ4Ns
	 qY9NJvh6htjSsJ9Hq7cdda5KRIvZ/M5cwWEeT5aqpq3lQzzbDaQ6bKcfDSTvUN5v3q
	 ti7prCTHdo4l5saE9XEQ3E6J1gMKIDUz08r/viuxdxeVRTqktM1N45/mkbjj4OU0hJ
	 vJM8GE6+NWN0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCEFE95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 07:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169674882871.22547.16795411074320874090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384aff4488d7f6dc54aa6b8a3a8d15b2c08ddf1b6c841815ecf59380a3e8a06b
Date: Sun, 08 Oct 2023 07:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696748828
