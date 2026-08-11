Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5659B23393E
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786417234; cv=none; b=gg1Zt/etFG6KLfw0CkkBvh7eoN66SISNT/gmkgLP9EIE9ffLB2GUrej5DsNdKX6Htl0Htg1gVr+I1r1/Kuven5hCSHUk6DNfwUy5L9+dlN2AI382wwDY0/OobqJJhJU8sBd6XBRNYDmEBQ1sRtEBiVZoj1p/Ky7Qns41jGHo3cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786417234; c=relaxed/simple;
	bh=ZYPHIKrl0SPWObpO/wTrGtNwEVz99XiH128eLo0ID3Q=;
	h=To:Subject:From:Message-Id:Date; b=K/hfbNw98D3vWuI8F0Ip4WLWFgJFAaLiaVfB7xmN7WQ469gcc/7LydTETTz0La2YR1Uv2+PmfmeX3WrudpOV4V6T1Y4AVLrCEaDwlfMsHcj+RUYHZDkLeQptuzUDQKe2/A/b9IM7rGYegxRnM8clR0m1XKqUHJwYuMDmYG+FcSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2Ov+b6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2Ov+b6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E8FC19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786417233;
	bh=ZYPHIKrl0SPWObpO/wTrGtNwEVz99XiH128eLo0ID3Q=;
	h=To:Subject:From:Date:From;
	b=S2Ov+b6vdYd/3JMFOnR34QQg0qva0vyvzWpkE0+w36s7kcLOW64HmyKYU6waF2Mzf
	 oNOMhIl9gfNIThHcG7xGf/R//oMWyvT81ko46SQS7sgDuXnZnkofZlau3i600OqIXb
	 Q/3UvKRvf5FhFJ+h4EOCAZvaQFHM4JXMWoDTAtiRcNyauhrTQBN4NZ/vCnP1hGnd2G
	 bIsVZC0kQh5J2UTPLytYowaFrX+6S1mnK7CAEQAK4xdIljgzlSVuHHzUHBgcUIrNOv
	 MLcUKMHSBPLdQi47Qjo1JNAjZ5fN/FRMsyWqG7g2pye32SWXZLVMgLMOoDGrsrTgcc
	 2N4Be5nsBykEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9EDC5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641723368.21811.16043907900254713053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb15c78c062ef1a9534e5ad106e60960b6879bdc0491ee81a7aeff4f917e8a4
Date: Tue, 11 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786417233
