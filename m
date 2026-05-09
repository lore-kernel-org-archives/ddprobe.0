Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4681C2BE656
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778293654; cv=none; b=iOmQE0aVl6e8Ax+k+7k6dgWH8N2bxYGYTsZLwM7ar9TZzkQkDbAKtJ1VgSro51ddKhZMGS2rzbROOgq92nEoWOedHdWyR/itxrM/FUCtPQA6yJTR6Pu6Jakgd8MnHh84D3v8iBDZEqPdg5U1P/bHuZ7A3IbehF5Eofi/Un+Raiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778293654; c=relaxed/simple;
	bh=EuLuqHqb5o8AO3nlGMRyd/fD1YQobk2gN7KvcJHTAHo=;
	h=To:Subject:From:Message-Id:Date; b=CMWyKpHUH/7+QjiTD9p9m+KnbhyLPSQ1FuSPMYU602vaeOZGeJWKI050/fPGeMth4U1R9TCz8fYCIn/2evvVoz2dpJdebSfaBT9b9nfnTg/xf/1WyyAQKkXsG2RD1ZfkFVpDqcGKeopFIw5uRJR1nXM/BlShgDH6qy2W9nVr0m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRc1h6yZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRc1h6yZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D52C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778293653;
	bh=EuLuqHqb5o8AO3nlGMRyd/fD1YQobk2gN7KvcJHTAHo=;
	h=To:Subject:From:Date:From;
	b=hRc1h6yZ0zsHX3AvB4YOd12o+Q5aD2QRGoclu/+y8iphO3wLobghGz2IsyvEwsjDK
	 FlG4NtiIbP1zYvsVyP/lSTw3TTnOce30txQg07I+jqJOLHf8JYsUJIPMFj1Vys4Pmg
	 KzuGIiDfZ79tsLWjmjyHuLQyv6ZLXOF2hnMF1GBGAomLsRv76OuiALufTnramsMzJo
	 PdcoRYq9EK2z2YahYFCk6YM9aw6cHzB7ppXzPOdTAVnRjfyf3eKyYiVityn4/MknUt
	 LLMskrOlqC7C/PDMkDIyiTCLHX/7WF+RaRBUVyTk3h88ectg/+AXaDFeVRGBLRiCqb
	 Kqyx5a38E8hlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6519CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829365371.10927.3860330318833525361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5f5925b81e225debc26ed4a1148c0c1f6180f5fa4091954465dd74c68b25f9
Date: Sat, 09 May 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778293653
