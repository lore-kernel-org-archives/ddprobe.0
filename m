Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8FEB676
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747471794; cv=none; b=iR97gBd3exBFAwx8kk6fEAtcmLyLaun0UnQVXBxQKcI8Lw8B2VcBqrO9tDwcZuQ0gQA2h25AQKUiYuLZG06cBc09slQ9cNU7n6+2ihXDU4WKR91a4H/548/fgGGv/btUHNoDmWeRH/iWJlG59D9FxABhz7m8E7/6zoNX5QzrOXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747471794; c=relaxed/simple;
	bh=mGFRUnVmlDZAGGJ1Rg53jxYPH4I9ketiw5bT8Eh8s8Q=;
	h=To:Subject:From:Message-Id:Date; b=TrBL/lH5hfWj6P6pY+a/yvb2mJgOWGQh2l07cl/FT+sGXf/jO8F64OMzGo3OBaq9vydZG49WOWpx3LXZlIHMZgoEFmbfZZuZXMOz1TA+7OzlVHKXMSgVJpgezDSWDinMo83PVPm7W5teUwzobjTOtHTdI11Q55U9PTz7yJU2/ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdp+CqaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdp+CqaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC46C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747471793;
	bh=mGFRUnVmlDZAGGJ1Rg53jxYPH4I9ketiw5bT8Eh8s8Q=;
	h=To:Subject:From:Date:From;
	b=bdp+CqaLOyUurCKEJQ/UIP8qAYPWSbYJXCV7SabK+QmtTlApv2g/vEDScrzfUAMag
	 Vq9S7hgYYi870eS156cQ9KlMAUI6bCeRn8poeGfvTDCL2RvWD1oG/Dgo+g2f13g94C
	 jbXD2gcKGXPtBICWGPJ/SEyqAA9rKe0MeXJOzNaEy2ynGiFv34M8v969lzjUHJOogV
	 /JDotpYZx5Tc6NrC5jm4o0004aXcXXTL1wFw5rg0dnotbDNzxMQ53oN6A8c0CPECq6
	 U/QlUITWJkCbpmQD/qcBgY6zOJNxB41tdVF33904xqDiXXra4C7JqH4IeqkqS8/d6K
	 3E/OrTmVaLi0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C6CC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747179358.9468.2374624034813419073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: accd1e9d88a0f454b97ba8bd86f4da262589e2d1a4ab19fdc60395f136dc224f
Date: Sat, 17 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747471793
