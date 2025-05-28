Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6F92874E3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748443194; cv=none; b=WfxuDcTiP/hWiUoDx/0k3+8OIrNGgqd5aYrHohrX2lsG5fea1lUgkc3ZZnYMnfiEY3fXzZ85Bt+tsSoKrB5YihZd3eh7eFvaC8urrpngc90CJFMA1ALc4rhRYGkuEx2AObhhQ+sdvnPCUCRxdHQkDSCYdwH7GPVJ/XVsdln0OlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748443194; c=relaxed/simple;
	bh=L16Nvl8sj4mI4y2IfptpB31lJLvmHWwdFl5BAVY/UIs=;
	h=To:Subject:From:Message-Id:Date; b=DHR7dZmVOHRV2UCSAd7KiqQAxEwVunbMLLHuXM+mSVfhQEpr7jBF+OeWhUrMJzuNQ5D1ZEWlxEzW44LSzVJo5yWaBSUCZ5DMm3iSwEp6sn6QSNwxUpZwKrdZbW2v883Afx/0xmi0Sz3rn4dDLnF1I0NzYYB2DUMc5ApO+5Ufc4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVRr8KC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVRr8KC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E4CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748443193;
	bh=L16Nvl8sj4mI4y2IfptpB31lJLvmHWwdFl5BAVY/UIs=;
	h=To:Subject:From:Date:From;
	b=jVRr8KC80hL2txpXONU+UQuqQiHJygejc7oISjzeTB/VQVX9PPP4k3ggnVMuX4bM1
	 dtW9jPBJSWWhTw4CnB643/dbLfSdY0ZTmDZeBajtvKcY4CNexwWTr8xPNMJpvkVF3h
	 0soR5GQ7m9m/0+FJrBhFmNHdvUTl+A6eoBIFKzTuSaFl4jC5vf7XyJiGoIiFIv6SDn
	 D45l3lbOALBxCN9W8kAl1bzpKKF0irEdxoGkuNJnxekI5WYOitWKWPEJxl+T9X0F9E
	 NVsoWtc1L/MLekhUHHslsO7Dj+J8lafLR1HKimfEszgOz7J9o+vvS7pfUI8YkK+2lM
	 +0jt82o4O23/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C6C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844319358.8572.16207325146628791086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934c5300012db55148010298e1f36535962dfb60ef27acffde6bb3d7d3d94557
Date: Wed, 28 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748443193
