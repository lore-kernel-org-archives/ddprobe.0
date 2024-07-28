Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CE41FB5
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722195954; cv=none; b=lwEXHOiFDg7IyhMD+F4ZeJhQFAvNQEfvAfW6QXbldtEmLvpo6/fII8D+GCC4kA95Sl2Af53ETdQAzTg/uzbPzLH4j4rprCwKQX3XAJ3V5AUJ60TNbZ4pJIEqhf2yhpmcYhyRftri5tpyRTr4wqW7MAgOiz7ei+hgUgvWLtW7v2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722195954; c=relaxed/simple;
	bh=FBSiLvnz0Kxm06GeO4U/Y5hBgZmcZpHnCpstDV7TsMI=;
	h=To:Subject:From:Message-Id:Date; b=LSNlGCSmmx0JDKpkcMiFFbn7pc4LoeS5Ixac+bm4ePU2dZaQL1x4bXvDl1KWWU1Zxoj1l9Qnw9EN7vftSfc0SurqzS/GzFQekqY8Y/wzI8btmVxsmPtmDKyUX8PeTK+gsDhkJGyQfB7VUJUa8rz2JYL7ahvdksVsu4kWix7vKFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MU5Cb3wa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MU5Cb3wa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD885C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722195953;
	bh=FBSiLvnz0Kxm06GeO4U/Y5hBgZmcZpHnCpstDV7TsMI=;
	h=To:Subject:From:Date:From;
	b=MU5Cb3waMdcl6wwZvKfYs8gUfYGop/1KMbAIKpVK+aUxF9hvf8x2VidIfTv/cPx2k
	 BlTwWAxyxX5sKGoDE1SUwxjwJp+6IfDri71/K0gjlPiwT8pe6bDTAMf74xEQo17R5C
	 +kQegPdTm+IsL2lUL1xDlFFtKoY8Cw9JknFfjFmQ6ggwTTe6bmoXtbWqCSnsJpgGv8
	 ZKSV6CHL4n8eZXr70JvqoiilBcnkC/ZrJkFefuL8QJRMhGy8Pc0lCGhYYlgZLNYmUX
	 MHqZQZisYmCC2IMTN4/xvogCWPrCYbnMX48Cj/up8hL4Iwmi2FBFy6b6eKrfYyoE11
	 ErzX3/Yis+3vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A446C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172219595360.7580.15399330636458459693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a504440795cea64a05cb6af29ed4ef0e30c2c96207365e1ff026c33bd456bd
Date: Sun, 28 Jul 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722195953
