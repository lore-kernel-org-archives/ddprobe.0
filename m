Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F3E15AC0
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5mrzZF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92B50C433C8
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698622696;
	bh=r8cV2S/PKfgKolnxKxg9lrM1bttYR6SFr6dQ/2QkTO0=;
	h=To:Subject:From:Date:From;
	b=k5mrzZF/d5MoX+OTmgLhsqJCQBH/JpaUCTeGF7//l+Tur+MEzpi+niSrs0eBzSHxa
	 Gi9wTG+AtTQ0FOrDMvvMvmePrYWYuNrmGqrxciL1J1Jb4r9qVnQ6x8QtW8STCrjBIk
	 J0TwzbNImUOyCgNZck2wzPRFw8xlraToq1E+kl0cI7pQvGcv0/QZO9x7obk4O/hgXG
	 xaQVG8VvT3sAWfS63unhZc+i4Ia6fbt3eq75Lur+AAK4hoL+Dymb8F9iWUakC0FBnW
	 3zg9k+8ilD3aJ0sswbI1IR+4kBTJy3JUoLz7HwLt4gPbU04Id6kmMFkSLYxNnQ6BN4
	 2j/Lfjc/abumA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71D63C4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169862269645.14864.16827750328913501855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb209ca9ed55ef9126fc3f29feb8d36828eaf4e0266661e28ecb2efe5538430
Date: Sun, 29 Oct 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698622696
