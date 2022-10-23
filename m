Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5052362
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722EFC433B5
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666496453;
	bh=unao1TH7HXhrGc7cK30NYKYOUfuBpFKpTHtDS0Eeo28=;
	h=To:Subject:From:Date:From;
	b=g6FwaA1q7MrWeATnmd8FRbDdjVk5Ta6unsSHO1Z2sam/e9aDWXrWObU2OjMrXSEF+
	 ss7eb5IyMW6JFA1R25EWLRk0/a6WV/B0ED1b2XugVHmumJfZ4lPuDbbPZyneIfL8Qz
	 8Gx3IGv4O7Cc3N6RFW1mc79PNUexjzAFN9rKfO95ADtimNr7p8d0WWFbdGID4CgZ2C
	 mBgifqjaOcMVw18MKeiobJ2LNyofI8rXBiN7QzoPwNElIvmnXDOwMPZ6vCIXQ5Bka/
	 l6ACDJTi5u8Q5APDtGFFnBgK8yk+sqSBCaRd853VcVbkzsVrkghDGJvs7Xf8SHzPQY
	 3y+b5bBC/sYGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5808AC433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166649645334.21732.9741473060829527063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0818b02b3290c0ed0b9e3a2a79ef299ec4c96f752be62e0aeb2d6db0ff18f7
Date: Sun, 23 Oct 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666496453
