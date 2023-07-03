Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E19F11C80
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 19:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CC6C433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 19:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688414168;
	bh=VnOLfNqlTNwq2fiAvn3neiDw11k4kWtub3CG35SxN/0=;
	h=To:Subject:From:Date:From;
	b=o4Xi+KLWnw6qQNimJDKjV0UKW6pcCNwQG0ca0adpfY5+E/sJkN/OMhw/4Bjdnv3Ld
	 12VFdCZYyBknTMf6+7dbvWY0BfGUEcPP2hdmAoMu9OUGwr286M82z3vdFpuF/SJrbr
	 /TGIM4wIwF7I5xeFQrmHeWI2Z2ZFsRnid+Tsoa/AutzlFvDdRUCgQnsdqvLg5DH+6m
	 TKn6jgFN4b85FDW6ZXriQAecTnnaS/tSy3MV4nm7K2tgar656K/5kOhV6BfCsn0bYc
	 pfPOTZMSd0MvbnhisMvpNqx8R7Hdu9gSR1BVKIopEGzModI/YqqqYIsR6PqA1v69rD
	 2Kg6RDZUAkLVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CB3C001DD
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 19:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168841416867.7641.11955871600438977978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f737e74a6b86ef3193bf25a741e0459a0e2d6783b8e95b90dc2e2982b1483f40
Date: Mon, 03 Jul 2023 19:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688414168
