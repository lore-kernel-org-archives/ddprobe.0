Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE3439ADD
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719679463; cv=none; b=fuWUPkCVOHjv8jOQoPlRHkwceGhLidXEoK1iUHPSQylzDzhrADQvGDNcZ9udFoAzfuEX7pSoZ1g9q9scjfjSsW1u/3QsJBVOJ80ECB50rzlE4+vCcouNCzGfcxQ/ngMClxIKOdK6QJM0l94lw0HbSHEPgNjdcUzCJexDBquogrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719679463; c=relaxed/simple;
	bh=gZR8WkeS0e6wF/zteAbATlPamDPkh4XlO1+8VuAwCJM=;
	h=To:Subject:From:Message-Id:Date; b=J3gt3qtAp3E8S2R2a+Jd/Wkp6uRf3KV3HiiFhPVd0qgTRbZPRFgSb6KyASMBK9gf5Y5kjVPJaqe3vGaFISjsu9JyUYHVsqjCAI9XgRJxuQsnKHGLVWu5XrBR4EMSisL6l5GPxt5SYAZ4Bg+L7eDGLFp47P9FcIfLKfsjn/yMnKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNt/c//r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNt/c//r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC48AC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719679462;
	bh=gZR8WkeS0e6wF/zteAbATlPamDPkh4XlO1+8VuAwCJM=;
	h=To:Subject:From:Date:From;
	b=vNt/c//rH82eBnLBZqCuO0gGTRlaaB5akcsly4x0b6uQ2ek3BuzyWNzZBP9TCQiJt
	 XP6RQpvbHXzmgeWWEfiWQgZodf3Ee/iuzT+29noxUcPL/LkoLa1oxoaej9kJdvLb+M
	 RVNVBgwWX6mhyF+CypkW5uj4db8qqTNOfwmeAupd30838fFr2sDuXA8/bPi7HkKGM/
	 t00ggeLhvUiEZgRlsT5/nBpVfDubXFI3orQVZ6vkpEIycsACxlFEZn64MJ6CBK7Fnn
	 rB4QX0Gnr/EI7RaWVDlXLHguNRYC63xJygFb/RZts1puyfn/eZb54Cc6PevXx8RxhT
	 UjEEKaEv0sLWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8240C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967946281.10916.10136812346075405123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5970fe14132cafb6dfd3b4dda2c0f5e235fa1d02e7be6e3886535d2ea6a0ec
Date: Sat, 29 Jun 2024 16:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719679462
