Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE6A800
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 10:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHdcyY/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB427C433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 10:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696848428;
	bh=aNkGGQk+0XyXFlLAYE572AryrOJSrd5d86kJs5RFX4M=;
	h=To:Subject:From:Date:From;
	b=bHdcyY/rCvwIGyJF0bX6C+HTgmDe5b0RO/7/QSFWpYsj44BXjDeEi2pSiQMBnnGUV
	 /fls0osHZO89hYYpRAv2xxCww1B25Ecr829eUm2AK2CzM27cjG45YHZQpz74Yzuj1e
	 MbRjpMpyl6ivzRC7eUQqHNDRNuMJ8kbMPaApZutk6eNpc4J2WFvT/qemiem/m4Em4i
	 0unab9HwPPPhUcLiPgWOJ7SjigyV/mZsaCV20lP6ptqcIuJWQZN30Zq6mrxJSDdaZ5
	 hlL+M5GhdCco7reXy0t+LSPMOgg5UmT0+iiPtfvi8jm1sC7SAZTkUYeTQ9+iLA/D1j
	 FRPlzgtaXyuEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC77CE95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 10:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169684842869.24771.10034844994374725604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ecaea1148c804b3afc472de949aef74c9f6abf2b2ce62611b3593d82f5df6d
Date: Mon, 09 Oct 2023 10:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696848428
