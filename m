Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E307D6D1B2
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712141297; cv=none; b=BH7/WbFy7dfyMFWEQeEt41O/Is3rIcwAwoghy75nGCUBejhXPFgudQwys0g1UMKkNB+xmZ1qTspyw9lUbkNvKhoPKVNo7AKtfUapR1018ATSv+/Dc5qkFZ4nO0XR2FtsrGhzE2Y3toUsscywHvG5R565bf62m+i+PQBbwj13Xts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712141297; c=relaxed/simple;
	bh=GxpoIwg+hhk6j5Lh9+M6jRijVg2IHxedyn6L5x53XlQ=;
	h=To:Subject:From:Message-Id:Date; b=bLNLfqL0roUvmRyXzv29IxqTCFmVR5yzyYgb4/5DCeOFZEayWMfZLGjequmJDhJIkdp1U3NUN7vw0Cj4zedNeq9QqXjb2PmohBe3cNdT+Uk0wywv7UIoUjH2qI9xHo5qOAKnSxrhdVfKdBJAGD3RyWAHK1zFNhGXA1gSYuQ0TCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMu4ueoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMu4ueoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768E7C433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712141296;
	bh=GxpoIwg+hhk6j5Lh9+M6jRijVg2IHxedyn6L5x53XlQ=;
	h=To:Subject:From:Date:From;
	b=TMu4ueoMIdPMOMGAIfAs5F4oNepx7jVtqWZDBt45vPCBVmWZxCGlmO4lL2E1ZJrwC
	 Yaw1RmcHszbgZ3f8zlv+AalRKZsVIrDjhAaIjHBQqaxpS3y2CcaLURIjjs4BE5i+v+
	 NWTbOg3fcx4LJkQuMMTpvJPHZ8H1jCsqJwcIWHiJJsLWlOFJp98ylneGFlyLkUOXv7
	 BlXxsJ+VFDvuCVs/6Rhjcs2Hf+pAR97irqpuv+WTDrD6Qgji5806niqlg+bHvulc2u
	 y3u9KQQG/IYfYvBN1x+kW0sZ9eJ4zNRrgdO5fPaapRQw6OfTNjBrA7Gcp2KKoehvjo
	 7PnC1Ga5L74Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E99CD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171214129638.10437.12135222909244547260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f220bf9069d43036ba7a70b5cb336edb91f43007ceccea9d2403b35b9774219
Date: Wed, 03 Apr 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712141296
