Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D6C1ACEA6
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751144394; cv=none; b=e0ktHr5k/BuePjHsBPpxoIQO3DbtxIEGU4F2/ty29w6H36tlS74cuMZqczMilPnGSMuQLMFKtkbN7bIxfequuT2OA604mj0x4nzNQlqbBM9BwVmSOvZ3yQ1JrRVnPROras86Rg9P6dwK5j1MS3MUvz7qG2hg4HaOCFaFNFZUjis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751144394; c=relaxed/simple;
	bh=hRQV2Zwb6Qm52wWyqrKAQyLWTQrcjiMv+bFhDAxRZ74=;
	h=To:Subject:From:Message-Id:Date; b=j4VN+McWfJoTUSEJcyt3UNfbBCHm5RpEOa3GptZrSvug8N7wz9pbifGCNZ1Iw805DRihlgbbFAuJbjOgHWDPWGlbWljrkXXZK45mq6biD9cQho/SJ8JmEoSV+KivQNR/3oUllRjEEwbHeU5Og7sb/Up6jG45RRAJjU2XD/OVhWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLoNoWYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLoNoWYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C59C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751144393;
	bh=hRQV2Zwb6Qm52wWyqrKAQyLWTQrcjiMv+bFhDAxRZ74=;
	h=To:Subject:From:Date:From;
	b=hLoNoWYba0LdPHZ9oQ1IbimwmrogJijtOJZZB0UBPD9DtYE2rI7ia6/j3qDLi3Dpj
	 AnCe7rKc67pk8P//AGQk8QzsPZZdcW14h14aDLLItFYTMnUvNdQF3BwDGlcq4XW8Os
	 4jXo3POUIc7GysrLpzb8/o0piGlCTi+Z3CHRJgiqKdi6m2QRnUo+5Uazgs/bRneDB5
	 2qzIYF/tmBnb0wMr/3Mbgr9T9RAb/SG9RFugWzSu2OW1r98fsCz7vIcyicGsdhV5nV
	 xqSps/FZ9uy6UKn3cniHLso9Q4xMwmqHe1Gd92wbAlazd1GeXQ4XgC7A+CjHs8EMa8
	 XHmGkHb9iWs/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9381BC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114439357.24640.15467318995874446685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f1dea68f2bcf80f8690a054dc2b6c6e4d2ceffa5d764ea87850222b217143a
Date: Sat, 28 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751144393
