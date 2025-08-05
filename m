Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF7F2556E
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754421594; cv=none; b=g0Vkx/G05NlESMU+rOyN0h3kuYV4MSMYP+JgqauCooGVQ2TAonbdHPOYTASTBDtH/T89G3ef7AbfVE2R623cuccAw1v6WvuLSRNX7wKJUvtqu8hOyyddHn0drCabC8TaIwlLC8SBXWY64Et5zH8SeHHEiojE/i6gIu6ZVmm838A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754421594; c=relaxed/simple;
	bh=zYY6OuBL/W7JFfZYvMPBFCa81ZW6IAq4OjDSeKrI6lg=;
	h=To:Subject:From:Message-Id:Date; b=NOHbrvpi+mUST6pQ5lgZdsdQLKG7Gvh6qtghdxhZbxcKfF3PPaGr2yY5LpBd5CluE2mMttrSXU/9CKLjlLtID0SxFBUslUgZxenh8NHQXNFMrAY0gT//8wvnBdnbNeJNrAFzfLOoUZRiMUoTOVLkpRS2M5PYL/pe9ABVY1axlUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNaXS8MN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNaXS8MN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48FBC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754421593;
	bh=zYY6OuBL/W7JFfZYvMPBFCa81ZW6IAq4OjDSeKrI6lg=;
	h=To:Subject:From:Date:From;
	b=SNaXS8MNuoQxB12paJJuLbFlrKR+1s4nYJ19tWdpJh75k4GrFSEFDmFQvr3oXVeE5
	 Zk08fpjJ7cKrb7Kb0tETB/Pv6q+F2EoBE26pTdA51yKFt0hGn/xpkRMffImBLlBHKm
	 ftKav6aXeA3JDeDOujnwOWJjLDS5VnC5MFWG8q8z5H6MT9X564Zr9NGQnJRGD7zcha
	 szv6c0eiEyiURVouVbq3Koyd0YHtCmaP/m2ATdHwEqCIPGG580bzmfO3VRpMuPrW95
	 BFeMd4DoGSffqVwkcNf7oWuQySQAOV3y4V4qYQWru0vbg00PWCJmq2cORq2jfowtcg
	 vr4lMeCu5kMVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91186C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442159358.17679.12279508008956386216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9624f21e898b9362d97b0f922267edc4c8b01ba812da871fdf4d904777644654
Date: Tue, 05 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754421593
