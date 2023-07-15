Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6628E184C
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 10:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A71C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 10:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689416468;
	bh=rOLzE6VkaIPCTZe0Ye3aHL+yfJLRX3VMaQmXhNXBFQ8=;
	h=To:Subject:From:Date:From;
	b=jqig9ZPUP8v/+x81zvvnTL7D+nAowVX2S3qGfcL6fcOJsP8AaxXIwmum/truVZK49
	 Jq89zchGedxnvu1qB1l9yCyW71cq26nydy5XdmEAQRWKt3mbm9HoT2uJe/skUi5AXS
	 nM9NtwDQJTIcR8VfDy4oUNqNjjT/NSFN0JTHn3ii/tEz41CGIrkSGGs0gxU/Dhd6+b
	 grJ3aEkMGM2P6uOoEAf+BoKv6C8JaqXCxSVKQ/d/JwMWLxq+Tsv3O998XcBr3Phw/M
	 y+yPd9vkKgLSreM6GIlTgBmHeYVvuVT1kcjwJgOQCtZo8Lf0P4LsWb06SrohOiYmHd
	 6sAaPGyrMnUFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B18EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 10:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168941646874.3815.4650416438705877530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5aa331852bf15755cb0fcfe4f6b388bf94c0f99503efca2c09ad6cff4c7f19
Date: Sat, 15 Jul 2023 10:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689416468
