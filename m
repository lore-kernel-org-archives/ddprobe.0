Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408B32260C
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748152794; cv=none; b=XddvmMk6NA200T/Hf0hM61+B7xNLpSJuPRN2XFHEALB+e0fb0P99u3BUHfVDWHMvdfyJyAFa9kNYYl4cwJf+pd5VsatfwrImy59OylCS9BCuLzQFUmEM/w/a81R3X9EwNnQKNHScWg9S+dE5s8J0PTym01v7b4yCT/xcbZDbJrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748152794; c=relaxed/simple;
	bh=sjOwYDaNJ4SKHMmbidgftx6P04t0/ooo/5U2Vd0uitU=;
	h=To:Subject:From:Message-Id:Date; b=OvlW+wnGTQMMszElmJy/swyV/ukbxVWAAJ2TPF2A4vVJbVWsE3G0DXwKiNfMjTdq4Ck55KheMpbEPGcqiOkont2MgTcLbh+gLsOi+rhOox7G6h2qqWZ/qP1vMT6mXIh21ZcFHjxhPnUGDXjzwo9wVgLQqgI2ugn5G5faWcbbhio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2hw/+Ah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2hw/+Ah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87A9C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748152793;
	bh=sjOwYDaNJ4SKHMmbidgftx6P04t0/ooo/5U2Vd0uitU=;
	h=To:Subject:From:Date:From;
	b=D2hw/+Ahpi8wXPiVRD1r3dCceDz5GPZX+qCCgDmztJY/Up1CmRfaR8FRnxWgQ9qIz
	 dFN2yGRn8FHUPLOf0ZsA+V4RWew1lKIr4xQJvAP3yyhsccn/qxGzVUVznigVe5Cct6
	 SzgwcBauWz1O37AjRjseXfF6uPyaE3zz/+Y8tPGPaE/8PaIBuqBbXtlfKl3SPY3Bk/
	 Dk5JHYbxPfGyNyfk6hJxZ5IQ/iafdRMKE0II2fKpiqTqxFa835Jsga2B2NGYyYdiGW
	 ZR/n/arO4dYaHXpmlz8GwJb/UlZiX1zVfR5ZUhLJKSOeu3ZfsLBvSExhudMZUTwxVo
	 cjpXumq9oDdZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F5C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815279357.19900.1662111093073917306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a78d4f0cb0e55c0323d964dbf532f4d74dc363a3a777bd4c5f9711f24a10ca
Date: Sun, 25 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748152793
