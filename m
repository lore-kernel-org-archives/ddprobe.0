Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183C2222560
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767272634; cv=none; b=iUXz1oVUuOQH8wXzD0Kp9ituI9EqK1Qq+7L10qsKvTQFYVtLl4GePIsGhSNcrLHQy+jFg3I4cvDXGl4TEL16iqbit/z6k+0xuHpDEXDeMnuK4NPyv3LfXc4ThrFYU/YjIYbivEynU+kqR/uNbVTEbQ7RcuhgR0OeNWzGkf4Fssc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767272634; c=relaxed/simple;
	bh=eZHJXDXS2dktpzeI2r/tvFnzkT5xgCHQHKam1PNCPWI=;
	h=To:Subject:From:Message-Id:Date; b=i/nSdXBn5T01BoUUdrRAyoEpyq+N9u44o5k2pGCS7A/5TwOl0n7j7Q2+1Qttb5KtrtH/0I14j0kHXJGAmfaFb9o2eOzoIp9oT51iGLGJe21gmKCfj7al9o2MPG5ShlpkmQ1E4OsvI37ykCWCPak8TvYnZKUOKfRqWrKtghynNIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6RylbFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6RylbFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6514C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767272633;
	bh=eZHJXDXS2dktpzeI2r/tvFnzkT5xgCHQHKam1PNCPWI=;
	h=To:Subject:From:Date:From;
	b=i6RylbFEnqTmZj+vF5uoSL/aKPt5rcq6fBQpNPFnQ9CJw/etFETK1EKoMEx8IDMRV
	 f/BYu3sBR3bi3pB781z/vhX/bt/Ahf0qcMSLzRXnWYx2MsSyPNymz4xiBD38Xi68R6
	 4zEs7E1HHjaD7u1Xy39w85+Y8TNHfl6HdYFYWOYC0iQUHRVHDpW0lBNXHGZyHSyLUF
	 XptW87e4Liy1DiMxW2tB6VnEwc/4Evcw+uAwuMnh54B4QjR7S8wtWkbG4dY4LPnGgN
	 dEtl0xA/sCmyQq6kaQXSHr4u7HhOfEGOHwWHWQ1CMe11zJ0eV+GhHU4/Qc6SxFuLsl
	 MwgeC/xeGD5kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F2DE9410C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727263358.2956.6240638460242044300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65850dea44e067a3616cd724381ccdbeeaf88aeac1e61c7ac3f58808529fc2cb
Date: Thu, 01 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767272633
