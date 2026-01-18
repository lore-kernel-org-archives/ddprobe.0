Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D9B2609DC
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768779234; cv=none; b=MhwsoI2OZYWD8MadlnX3puanfOPrQ/lhzWdvbnnlwA5grfQZJP4vjdnd166RzSY3PlzWwWwOHPbMJaVfAzHw3kTzdnAJbPYBaSD1PfWP8F/Ibptzqt6nJ/9PFv1dc5cWXR1SIHAU1hviEOunJWvPqTjtn3p/sEXpzZTRfNbvpv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768779234; c=relaxed/simple;
	bh=GyJJLF5QPKL3kUD3Tq09Pjph0JzbL6JNgCR+S/2AKGo=;
	h=To:Subject:From:Message-Id:Date; b=lsvZcISSHoH/tFdavgm3+KU8k6NzdGj/GWJevXQiBjlb+uIDuoPizkp9iiKvyNmqFhJcbxa54FMI+nLFBaN7BG7SS+H/KhMHpN17TWf4xuelSvgp87ctf+U4lYHucaYhYdVFhD/xvX/WaUXXQzCyzslRvhvj4NQfwhM1zwRgJOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQatytgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQatytgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61F1C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768779233;
	bh=GyJJLF5QPKL3kUD3Tq09Pjph0JzbL6JNgCR+S/2AKGo=;
	h=To:Subject:From:Date:From;
	b=iQatytgbDVu3IN3MF/CJpT/hy3/7c+Mtihtr+X8M0sBXkQ++R2gvmbqpkIWxJtESE
	 dXTn5EkVF5NvWSL+VyjA7M1/67kERLOcSJhypuyJavEGm/p7F5ybBzLY3BmCK/gH1G
	 mpWunTdJ/lqSMUT6UZ8uCZt0mzlDW2eN0NLxJfEjc/2tT8KPW3DmrN0R1YpJk+vsTo
	 Un3LgIlGIeqoa6oMCRSx5eaM7XfWVKeuf5vEvags3Qtxt3ZrPVl4Xu4uEHqn1xY1nx
	 11scBSyXz8vK7VtfnhA1DeThY/HptSw/oP/6BH2safPpE3XyEjDC9xyd02CABGXGxC
	 vOSRkbKt5xZKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955AEC9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877923357.24625.430069146860311026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0843968bed85134aaf264d3c1ae8d3e04a20726cad9d114138183d9ff149a856
Date: Sun, 18 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768779233
