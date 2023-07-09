Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668A3399
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 00:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE617C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 00:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688863028;
	bh=BSvwgIBcr2XTa829qX1JVBvtDdeu3fL/rgLtpMZf6w8=;
	h=To:Subject:From:Date:From;
	b=gBi9lK2VlmdePqcgt+YEKBH/tY50lYO6sDUo2r6xDXJX9WkSMdE60a6cm/xQfdJKQ
	 dsv+6UyKliicd3oSqgZPKjR8m4iOIuEVebFrEZFgsVFR7Yp8MpYv3WQXniOldgH2wI
	 1Abqlu4jk4m3YqbyTK+2kzRgbi0fjHwjEA3j4pQT3nsTVOGIrskjKUOtDAKi18n+Dt
	 37sQxiaddkreL6PSDyEUw6daZURagiBcpcFCekdZwpw2k0ae/8dQcyOyTdCJ5sgFHi
	 6ZMEMfBmT1v5gcgdn4taxtJOOQAc1duN37VDdiQ3MRZHA4mFN8xCbh2CsBI8QdNe1M
	 znJ7M1iyFRn+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36D7EB64DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 00:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168886302869.11601.9754008245215194222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df95ab313012e8baa4bd83e9c04a61e84341482e865bb8c330b7726615a37dc1
Date: Sun, 09 Jul 2023 00:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688863028
