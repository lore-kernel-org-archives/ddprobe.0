Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C82946E
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdJm6IrK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8432BC433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699081096;
	bh=Te4AD8iTcDmYV/6bO3h7GXEiEOlwJw3aVv3fWDjLZ/0=;
	h=To:Subject:From:Date:From;
	b=TdJm6IrKqx2/+xz5a3qA02AztE3KTHmD6g3Xyam3JGzjZVXBsXtfh2cG41i2dvwiZ
	 9ogb5Ec7p19nHdLEmTOz/O67k1UOuR0ELqrG6hq2AzhKeRKwy6sGlmImMbpcloFGT2
	 OkZ3NuSAGY5zDXn0sppFzPhzpA2X0Dz9a0kzADVYVffvIxCs2qS3Crm0ixrVy+QDTZ
	 xVa5Zu+GITCY28PvxSHuGj4qEVHnll7E9BuToK9jaszLB8T7XLHGcgoCbjFuI/Rn3o
	 iqM5bJqlqGfrmUw5euCZKgLV1SF6P+s5dOGZmdN8HVHUIYUu/dgEgV6b1co0zyGQF2
	 zXamu6Vebab7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D9CC4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169908109642.9301.2300353731275125139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401cb75ac851f85c9dfc27e70749791a8216096524ba036b23c071fb95e29f60
Date: Sat, 04 Nov 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699081096
