Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB08828E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88851C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671882087;
	bh=p5LRViWwcHuEXRiANKjdc4Ar2UTGQuAMiDdiT2hTXEU=;
	h=To:Subject:From:Date:From;
	b=Nbnwb5wP705F4TcT0ptQntwolxSgezGKyLTjPkBNq+3gGLX86Frjt3aNyYa+kGlFr
	 XGbcfrx4TmcJ3ISmgw1ZyTWpPsSUFKy85LetBY53k1RhwFE4H/worzroCPJFohChv8
	 9fr8ooMVUru0JVp7qHdhBaNc65I+zyLRZl+H7cnYUISbKztGA3bCgCFq2y9GkJJN70
	 q/0/D25W+uSbaZlPfPxVUd+IlrrmTRJ7vZrst78IwPmRtFMxdFvwSiARIrBszdIMxB
	 TI7zXzuyETurbb8gDcFicYNlnFq3XyKVZYDcruCtC60LfzalTmvAk3FaCKdikBMcph
	 I96MBmEh3gRdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD96C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188208740.32322.3156611391365377729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5fcf0ebbc7d0a4060ddba0d60940e3c56c6b2bc4cf4c259358b4051c17a822c
Date: Sat, 24 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671882087
