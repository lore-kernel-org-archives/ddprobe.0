Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CD738F94C
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786952434; cv=none; b=hNiO60FwlgR56TKHbEVVa/gJj2fMSXU6STA/iX9DjtgIAnrnu3FOQZoTJ3CP+Rc6ClH5hgFFRPBOA4ISXpCJm0zs33ytY1x8ANlk1vuPpVPm5wsDJbCFylsdoQqhx8zHe8aOeB5evaCV4JysO41eoNRxUM4WdOk1qPDGOlI3qoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786952434; c=relaxed/simple;
	bh=HUBDd3XrpH/ZuzYc8gSzAcWvAKn7YCJYjB/VPFM3qUg=;
	h=To:Subject:From:Message-Id:Date; b=bOXrsv8ZtxPFupiqbDyVJel3lBUxRuD5UXTrb1BoDeoOtk+HISk8N+YCgEzH4C3tMy785YxaDiQF+QtskswCfrYyl25bGOFzakKz4aT58b8CgnzsJ/lLxVyVJXr6jICIB5IqpF0L+a+0Gv7IT+9beYSptRkkyEe1w/aF92BQGOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9hv+24I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9hv+24I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBA6C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786952433;
	bh=HUBDd3XrpH/ZuzYc8gSzAcWvAKn7YCJYjB/VPFM3qUg=;
	h=To:Subject:From:Date:From;
	b=E9hv+24Ic6e4MIxVsdn0XUN7ftud3Spmja8JEeBjtUBDoI5ZadaR4BVEmPAtkUYGf
	 TUvQ5OdbyiyIAZPls97a4O4BzEVRLfcj8Gfj7OsY6DLCEShSRstXcrJyPsRtynZrN7
	 QJR414rDsqSXoSi6CYWlQgHLxi8GfCZ8BR6IdACTaJI56RjBVDs8S47veiYk1lE0N0
	 RHpVAfsJlyPTnKXOLzMDWrJK2X3xXy8FROLxPqnm4eHuaXep7uE8k+Se+pKnlCQD5m
	 sYohLumA5FWCfW1GKv5+D2sckC9tIFlwnfRagVBCPis3Ka0fcbmFwFJ06GVsHFKVYf
	 yv2C5CI7ewRFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F8AC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695243374.14639.973002706513288195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9910c000d5c3122a28842fa358d072676d801445128a5589613c00b05d92fe2e
Date: Mon, 17 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786952433
