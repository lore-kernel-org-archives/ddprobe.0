Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66895188
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 00:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnCcMCRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED36C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 00:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696724228;
	bh=xqrjl79nFg1eur3wbfZiBLS39xDBblu68QB/naFSRrI=;
	h=To:Subject:From:Date:From;
	b=BnCcMCRHYCQvmoCR8BoAT3ssqEyrlaDcAYLdgkJVUzEWn3tYRCuaz07wlRlAcB4Qw
	 qnC93VWH3TKLyeoPG/hDsf2ehinVO+1XweYBoMmFqdJAqPmtU8WFu+p7QZTeFowEzv
	 fAacmxct0c1gQEGxEmfrTvNHDNekzYTrgmMGMlouzz/jrgUTR/INVXzsrHnDp2UJ1/
	 2SMy7a4J7c+MIaexiLizqCccRLkfa94wP1hpe+aHgfRJSoZ4u0Y90CdTjazA9iyDbq
	 yVARlp98351JIRyeb5LObn7b0JvQ3GDzV2dBM+zD0/cAWWeQr5lD6GJ50YoNwufGr7
	 Odex+4DIWoGFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FEBE95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 00:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169672422868.20081.13473349445865063924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 983b2294cf2f86fffa2eeecc8560ce2d4f3b3e1e83d2b0c765e475a793bdd454
Date: Sun, 08 Oct 2023 00:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696724228
