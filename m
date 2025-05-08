Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A31322CBFE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746743994; cv=none; b=is/44u5xywRZWi2Dc8VCrCgZAK+hGkpHrhJhSMGHeW/opoZHYC5UpD/BJCjEoE727DyQ/vR2D6YfEcx12ciuypbFJljyoElm6Sj/RF6cNO7Du+qopM8cpnn90WvY4/4zDadqv8mzbXo0atefIJdeDrQlmeFHm0/cYklToLKOeMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746743994; c=relaxed/simple;
	bh=kUs8hWTHA26iTu2QpbmjTdgbhzuJyVykbBHRQiLy3MQ=;
	h=To:Subject:From:Message-Id:Date; b=Pz4DAqtiKgD5GjMCXjtu6DUnhmDLpFrP4pGlBIhNV8bPU5GsV7wzqRRpNQEty3FkCoKqJSyznzoq0HqPex3bEwAVGvLOvOcs+ap93XC6YndgWFNBdBaty9DlaTgtyb0TgbfiIwXtbSUCWQS8/X5HnQH9dlR7CmS+/T8I8FN8Khg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL9sNMnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL9sNMnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4106C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746743993;
	bh=kUs8hWTHA26iTu2QpbmjTdgbhzuJyVykbBHRQiLy3MQ=;
	h=To:Subject:From:Date:From;
	b=SL9sNMnXUeWK8h22pfbT0w4/oAk0Z79wPTrS1bHauZGjTgUu0FvP74LZu0dpIaBJL
	 wQTcjikq0+znd2kSHoXbLZpzLs6mApDUCkjxPna2MzWNmmY1rN4m3XFA89LGCw1FkE
	 dfgFGfyFxnshdK7DGCOdI3ZVPL04Kg6rAM1o3EprVBmQJcAk25X30NjTiqGyxIEgdJ
	 I49DQdAx3ljlMxWIXtaS5dSNncZXhK7ECC2z14wYfW9ux1AITVpjhzhP5c7nnioDGh
	 7gdhVkMHrIKrO9jR1Z2vEB8/sG+NLdzKXvSc+5ArXC/EZDOZvpjgFobvKNnn9HNk4v
	 w9Yss8zj2KLWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92878C3ABC5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674399358.31654.17957400587019278119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beeedd30c49d6148742012602548a95a2717cb0cece5df838f2f121fd8f023eb
Date: Thu, 08 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746743993
