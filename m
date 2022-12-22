Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD8915A9
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DC4C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671669687;
	bh=+DPZdydZkGuWfuVEBwzgAO3ngSdx61q2vV0t3mm0l5I=;
	h=To:Subject:From:Date:From;
	b=WR7BZ7c98VamDI5dC9+KTG+r2+ZFVTFHWQhNYytVeXFMt6wYacBSghtEK/yufZObx
	 KONGVDG1xPfoM/U9X2cwHm6s9D8KUkD8fakLF+ZbnbDndjwZ0SLirkQEyrFV8AkP1I
	 VcFC/YG7+3r47IpBE5GB8pLAZqXFBD2E/Mb0psZb6/wtJea/5HQoE8OQXIx4s0XqJQ
	 loyeGF/wWMX209cmdqbs8QZIuacVLVUKw1QtuFdtSqQwerXJeG1EaMgvB2xQBAHoOS
	 jcD4kDcvp9Bf0jpVTpigq/Uvg6//sLibS3jo4lBLVfYYLtWMeFQFoNcTighaHscdJW
	 zm2OzBHQ4uhIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB57C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167166968738.7429.1754311522320911372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e6ca6ebc5290207970a464d53ce0b11cfff0f792d5a25c8eea89c6863b1710
Date: Thu, 22 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671669687
