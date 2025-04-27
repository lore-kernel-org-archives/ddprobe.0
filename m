Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A7915747C
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745771394; cv=none; b=N3rXXW35+DOAK6Lf7gba1io2LKWC/xn110J8e1Ve9E6PzrciUedK7gI6Znm67FOuUX+UZbOsi9uF2t4AwQjg2cIqQJF6rFyVcrmWxYQRc1I6ls+jvlMIdPzhUl8oA6aArPIMiVSZzXpqdkyaPrwhAbrnoLnbzwfYmocO9dAtrcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745771394; c=relaxed/simple;
	bh=ZzYDeH/qdA2itv9l2aveUhcGsC2irRTJJF2+pg4KmuA=;
	h=To:Subject:From:Message-Id:Date; b=uagCIxzdo25vPDcxFnX5LT+ayHL/ZEXQGHS8LDhex3N8DjkEJgzKnRS9sfZrC9ziKfxRXusY4h34Guw2ky4sZhlNH5/PZ/AN0C/JxtgXCYTJ5MeEobN5A3qKD1wxCDYaXtKMsZfK7HssvJ2WcVcTHVnmxryFekwC/4dha2MUAqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uX/U7h/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uX/U7h/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CC1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745771393;
	bh=ZzYDeH/qdA2itv9l2aveUhcGsC2irRTJJF2+pg4KmuA=;
	h=To:Subject:From:Date:From;
	b=uX/U7h/4akGacjZjSKE4y76v6adMuLkApuDLfGErzhfs0l+tzl6Ln2Alj8oNJ/Edh
	 BEjhdfVYcEYQdROWvpSadghEqJXFzBDxctnLVqqoVRh+sqKAwnpBmbK3Ebp/6ofRHu
	 rKpRSCoKl/MIY7P0n9mVR+6/QsiDAYN3M/P3mpHS29DUh49e0pKXZdROtPZCHVZ/LG
	 BQKoJh5VE/qSK0yBg75nm06qZratOQVHiWpA9vw/1UiuAg5gjgTSVsF6kyl4jAjKue
	 TQxdFvLiHrw+VDfYu2cx4YuHAuPpMO7/UhfKYxRJZpikpC3yEuXX5dToZAxhI+B8YM
	 NZ0eM5VnaC3/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E00C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577139359.11394.13726046888413680328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d32d5604413b6cc8cbf5cdc4806367ac51682af38ab056ceb24c7734e93a54
Date: Sun, 27 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745771393
