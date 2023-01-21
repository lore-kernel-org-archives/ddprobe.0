Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415B87E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 08:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6714C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 08:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674288725;
	bh=/zmW8ia8CkYAmKlOBjO90LG9yGNKeffSwl86jxVzu4g=;
	h=To:Subject:From:Date:From;
	b=obTsz9qIQtDrY/bf7hFFUPj5mt1+FycvoA9j0YnAD17pVtlCjFXl8ZENljM19WB19
	 AORSLW1//ZCRToNBsMfCcltFMRsgLNAGxvJmg+f1ji1FJXLI9GjiiwgTnBs9sTqF4e
	 o8MO+cGZRpDd/CBRg88sUNXRFd+ApntmrqRRSqvXbIwmA92U0MytnCLxHRF9PjJZkB
	 MRMqe/D3fJsCNuuRmJJXbOW/hwKil1waXM5ET+aWYKwI32ytdbacVBIif1ck64N6tY
	 s72m/1OAiKMnRpEO0ajvcoGxBu01WmExGP1PYJ/+FnMbVoTvthf31Ou/N3Sk71iEQn
	 NlgmWJwzbeE8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8222C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 08:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167428872579.22003.13332194403698279305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae2e71ccb28c806afa69499b6abe2671cbc8c44e5a469d0d994e245637b40e6
Date: Sat, 21 Jan 2023 08:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674288725
