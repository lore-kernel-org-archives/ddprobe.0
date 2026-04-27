Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391A31EB5C2
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777299454; cv=none; b=Zl1MP3MRfrUiyr4Df7ZZ5cyNdMU+2zY0gkKZpKe7X7ucaSeY63HjGoNtjq356WNsqhKVVTgsVRSIPLKLdbxlw6pRYXP4+bTM1ghavnOUF+UX8hcDCxDKnB4mYbc+599hCBE7sRYXYTh3FgbO0hNnsiQQDMAe/9NOW9bKTeo2Ynw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777299454; c=relaxed/simple;
	bh=YzQ/yccziXr4WTrkUeNJ/32ignJp3wVaR5ZeEZ3sd4c=;
	h=To:Subject:From:Message-Id:Date; b=mzv5OOGRhGwcVfEnlAo5BxWy5vD1G6vGJC1bjWkjevMWwN51CtoLVAhRfLZc2VF3rBTqafN61zVcjztPUqr6mLby/AB9+t37LOpMSr5ys0ocvI4IKBZiLC6tL1EGiLyTQKAVZq0kmQy4gW0j9zMqDinUfQg9iF41JQp511N+ZXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wgci7X98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wgci7X98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE6DC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777299453;
	bh=YzQ/yccziXr4WTrkUeNJ/32ignJp3wVaR5ZeEZ3sd4c=;
	h=To:Subject:From:Date:From;
	b=Wgci7X98qHEGnGc9RU4GVGntzpuqjRucAQnAQDtejP9L6+ZqG/BDZZ6Kd3FsCzsL+
	 CkaccnMKMwId+uZX77mL2YhYstCrIAez1Oxt7YDiSnG3w/dXkoExbM41GYPALmm86y
	 LK9eNENtBPNYqQh8fpyEpjkg9cqY8+kZ6iOic/PtxbMHD4HgmJpnrR5zXLWspXVIx9
	 2QawGVa+dRFTYqi5asnod3+CXKn1683GwfcvmG+zM0eLAa9IJ34AyHHmLaI3ReH0OJ
	 ejoqvETYOsYujdGs0OTlcxwuYqXXJwx6ygNIdQAveyIVmCtVeLR+JVFF3vfcMt6BAH
	 GApfGdtb3FSpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD323FF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729945368.2715.17753044832108457868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88f5e3076c86ea25c790ae538dae7806686b10c68b78075b73d359fccb92cfe
Date: Mon, 27 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777299453
