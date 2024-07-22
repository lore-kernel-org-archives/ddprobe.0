Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3957F16EBF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721674554; cv=none; b=m0T45HR6EMZZa+uldjIcnj09wTXsDkp1U7OgYN8ijw6jZfVA2vwtNp45TlhH+dBbMKCXPXSUZ7Gx3hPBfemJqhd6yrSN9FUZAIulIjED5ybISOsZVe/7rap/JOv7WnA0LYsrs9/7IajeRJzqI6QsdlVusPOQ8H32/tQndE0VyA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721674554; c=relaxed/simple;
	bh=ukQJ5m/9UsaRuePPHJSlkKL2QaJf0m/s1oZO4ZjitIM=;
	h=To:Subject:From:Message-Id:Date; b=HHBx0q02+Lbjq2JfHx31c9n7Rl9GpN9joskVWtkjcPktPcHrCxKSkayjbtcamVTNUT+ivHc+D+LZcWOrZl4B/a5i2e2BipG1HKypwm/XZOZ1E7Mj/Nk6kSmD6A9LyxKf+HMTauhQcwVAkzAaFTgeYTdtTW8i0awxjqL53yULonA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R21ZEs8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R21ZEs8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D3CC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721674553;
	bh=ukQJ5m/9UsaRuePPHJSlkKL2QaJf0m/s1oZO4ZjitIM=;
	h=To:Subject:From:Date:From;
	b=R21ZEs8qW5j6MjTkDbgoZovXFBv0oitaSzN+U5CQZd5R9iuAK+Uxe7mPG4IP8WHoA
	 vMfrIzpWtE2+N9BnkrMfn9ri1c+/xkxsfbcxtSYa/nRdIL6crySgNpm7U95nUho7JX
	 yEMBTZrIJgZHIIt1z9UlQyq1bmRx/HACVOZvJRRhoZjvNUtXbNLJpyX2Pk3Nu9Hc7l
	 vQO9yv30fA9o29ruLei98IL9EUVZ2qCEoalVR9Mzdwz+YbMCqIRMd9wkSgESf4bDZ8
	 8abkcWAWsyJFM55kzeQrurRdv55hHg+0i/vxbpZeN7Xg6iY0rovrVRE03UjjhehugC
	 hME5MLuQU7dgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9963EC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172167455361.17045.17245624471580247610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5265e10fc2af9ba2be7b527b0721474b846e73d443843b5f0b213dae6e5e78b0
Date: Mon, 22 Jul 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721674553
