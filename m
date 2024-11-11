Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1291F1A08CB
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731352554; cv=none; b=Nss4D1Mx6aDZrpHuSqgIO5YtqJ8T7ylgG4mL1YJRz4UsIc3HaVTBoc8kQUNIyuairVnlhgRzi9FXXhTy/VwkJnUq5sFg6a4RrHDu3LPlrk4s7/DHH+CTGi7GqYTVJyEybZm7tYPQULOBYJVmlJ9aNDkH4HdxLCcMSBBaN1nLYVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731352554; c=relaxed/simple;
	bh=ij2KhA2MEYhH0TSS21T2ofmMG4117BRU/aWb1bqzIxA=;
	h=To:Subject:From:Message-Id:Date; b=U2J9exHoVSGKf+9+4xekOu5lmn85JIog5CtCPhRqloQtLBbNgn5OG7dmnwjr5bTFXDUTdMcES/nJmB1GXVGrpFWZQyXhsF2E06AFrZ+X5Q8uwXJqEDR6qS4dliCAyz4FNLE+1KCu0XqxG0X3M5a7PWiv6VH+HWqF8tFLCc4gCzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeQbY78F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeQbY78F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BF9C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731352553;
	bh=ij2KhA2MEYhH0TSS21T2ofmMG4117BRU/aWb1bqzIxA=;
	h=To:Subject:From:Date:From;
	b=oeQbY78FX4wqBEJi4rs0ZukHFZBpHy0PHZwGiO/7MNpSQ9YVyxPBnePxBK9pe9g5c
	 9m34eEtxqWYC3so5PJWlhkXu42537+nSUcFJiiyuJS/viZ6qMlmOSuSCeT2zc1w0nx
	 YgdGspBmq2RfcrM8Z0ulNRrmEmN9vJiuYJPUbLvCwRaTGEKwsbCmTEmzmIzPYbjpFj
	 Ctw5dxU4+/gz4qUzWfB/2x4AlY72qnBNjIF3/1V1WGprryTSZEfUKVYRiUAkxgLtXe
	 g0umt7C42KLmOCzp5DeU1c173QaUpNS4a/VSF+W6kGkkzJDGB9ODOJ8UIPgOD/xeHY
	 3H58F2BPDupug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A0D3ABF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173135255359.7752.1389721308819522519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84babfe774b37c51c23113489199972f5c91d11f2fab19102c0264d38df4077
Date: Mon, 11 Nov 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731352553
