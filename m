Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C042261B
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 23:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9429C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 23:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683935765;
	bh=ihl9F1x2uoQ8j4WBlIOBM62DvwduvbItgtcZiHpI6gU=;
	h=To:Subject:From:Date:From;
	b=Gm2Pzggo2x+sbP/BBomeSd2SMMNLPqvuvS7WrCShx4dkMtGjbGeTfmhzZAEAzHp9r
	 NBKPoILMMIdswf1dbp6AXvHrsp5jOXDtI21YP88UB7ClzwN65M3M4cdOCBMXDzLSIy
	 FXL/tBfDx/sHcuMqSgBCHKd7N4ZENRCqQjle00ShZ7GR70RZuoyD3ckPkEbb193Lvz
	 O27bYNgkYJHEyNZqMSw/RB6IgiAWP5g8FsGPKWlQQkYB6BzeZrn/AlPJuexj0FA/xp
	 FlvVR7m3b5zs11h+0AYHGcCBZ7Sdko0Ues0u36LTBPgmLFLWAzq3g+94Z+g2JBskAU
	 1GJcz2USK7eig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C402FC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 23:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168393576578.23756.8200863043973413140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45907c4cc68494d2b1ac01e2a6206a2f7ab7fcf6c716638e82e1c8a913629a1f
Date: Fri, 12 May 2023 23:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683935765
