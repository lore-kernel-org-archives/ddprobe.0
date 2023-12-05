Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1252454789
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ln2RmDPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B013C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701772696;
	bh=hRaOeT1OV7ToyoWmhsXEENGQgcFBRT44C5YAP9bPE3s=;
	h=To:Subject:From:Date:From;
	b=Ln2RmDPKmcSouhxJTf277epSGkW2PGeptCRLQuRvlZ7dB9alC15UTfyb8WVYXPi93
	 vscyULtIY7dSBNjM7sTLcGOmoh4xsBfJYpXDatvhvXsT9Gay0NiO2WGGARYchmNqCp
	 T9U+zzeIujCvt29dp2QG3p/eyPVWB1hqKh/r5M44wBgECLU2MlamCK8LAQwlSfwe0t
	 bmEd5D4Umbvo0mpVD0yVSNIzS+AmYvsIYZ3ixbzHHpJZMF8Um4GaP1nE5YnVbgNc1d
	 yZIJYTOmvTWCDJE1NWo0iOgqAuHnB0Ritie7FVUOKDfy4ba9Tu6CAnkwhkTbO7OeTq
	 yr3vusMxno4wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6221EC4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170177269638.27713.16351704461697461616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96cd9d1f907246851dde67ae0776e2832cc4c9415e50cf9ae6eb89a78d27fb9f
Date: Tue, 05 Dec 2023 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701772696
