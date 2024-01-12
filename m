Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1CC5D914
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LedNPVM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9314AC433F1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705054696;
	bh=lUVTMmjUn21jJo/lj6+Q/cK+7qYN3MNaSJFT2zhhRrA=;
	h=To:Subject:From:Date:From;
	b=LedNPVM/UI6rCT5BS78pk6RRhJE8oAi11852kCuN2wugVquP7TUMHqNiYJ5GHQIK+
	 srJc4XOM4/+KAEQMS9ArPCtvzOp1Fsj/5dm34JRm5xWKbKuJP6W3MzzCv8vb4XUoUz
	 WF+X0Y+mpSfXb/Y823eanTNdeeeM4xVrqI2+mY8O1wDXC8msBTbDd0rYdmNhfY1yhh
	 GiBoZrK3K6wET2nMDgEOe8SCqKoorN+8zrNQho+jzPMdAuC08tf13jJpGEDh8sseIa
	 xcBgV2Fzzso+c9B8FXs0mGpsEXr3F4C3EHQ4hAvy5AxtPuOjOpuinwbV+qy3Z+JNsT
	 MoItug7+mWqng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 724BAC4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170505469645.30440.6297376876196800852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fdbc0df4a749ffb0fde2a6e0f4749ad5e2889435db8648d5c847a776cefa03b
Date: Fri, 12 Jan 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705054696
