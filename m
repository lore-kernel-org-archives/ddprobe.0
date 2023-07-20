Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6380E15491
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 06:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EC1C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 06:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689835928;
	bh=xAgnYp/ZTtdE4GaYiCF1l1SitvLBWQyh+TbvnBKmD+s=;
	h=To:Subject:From:Date:From;
	b=ASYtWeOgzAu/Oj1GSJ2XNw6X/xZF3MGlMDmj+AH6IcAcLn7zJ5dIneXk1otXwQx5o
	 Xxc+5ed2zfsx0ucKN65vskcKjdNk/FGDA215LUtYPRoQv5PiL/WfrtMdJCaMHDSKDp
	 lZDxRp4iETwSe2I5RnTVk/wIc86oMVO5npfQ6P1pCclMyy6A/H5UUNc6J6Wc1ZtJvP
	 RPtDFH0Ke5EeoN6ZfCggAeaqBm4bL3MXFXoxpA2cxnH/5e/4Iao/gk6ZBXacWDGJni
	 rgp7hQaO2MqqJY9k3dlsjSjh3Utxp/igFJ1HH+aiXbkDAQauVs6W5x8pCSsogPNVQR
	 vmufQGTJwSbjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F33EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 06:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168983592868.17999.1234334359077788018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e6e33c805f67d18a0296ca3d67e2f24da085b14e57326506ee78dc60d1abac
Date: Thu, 20 Jul 2023 06:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689835928
