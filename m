Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71F3267B90
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762280393; cv=none; b=RLqCCaj/dK3VGrFY1CrMNhRk+vLsxJqkl7OWl+VuJqTedGnesjC54Wlq+BeMvYm4OFgdNdd6TDCzWlLstlXIBCucZUxRleOSYHZ8hIidspDqzVWvNZfSnLIOL2GyG1n7rrFYeGwF0mEFaHLbj3QO/rXGY81sU1Fxya6EJJKvPrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762280393; c=relaxed/simple;
	bh=XLkWAN6H39WstWIhBlfoCCJ6MWaNU/QR1ALQOQPydbk=;
	h=To:Subject:From:Message-Id:Date; b=cE9kbCJIyMPhlHDOrbhTwp8PJwtBcDivhFbqrZ5HOOewTQvTv658oGlnaVAt6dhdasB1w093wE3hEcNnfJHCgfA1x5MuophEYxCF0hPbnV/03Cj2fwV13yfzzaDMeGScWMm6p29AtBosHcod92xTT3MxcLywVnl37PgqiPyAtEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTuVAnG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTuVAnG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF9DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762280393;
	bh=XLkWAN6H39WstWIhBlfoCCJ6MWaNU/QR1ALQOQPydbk=;
	h=To:Subject:From:Date:From;
	b=dTuVAnG+kYBAGraeT4waB3Xd/ywSIV83YBODFxIQUCprg3OEYdaxQqjnfWPztVH+J
	 DsMlcNYKQlYkaA9Wn3oLtndh8bLtPVuimvzO+1uAuyhcMqMMlpagUmqbc1zWCgYIP5
	 7+MtGibduMLwLi0m+DR4cOjDxlX+XQ/3B7RYDsiGxSwsqLmarknDzwa5bMmDOSS0qh
	 Ei1DEvG6HOQTp0dpLsPTlLyPljQhoIMvB3QM4Ci6yg0qXJNx5sQ2w8ONKHK3TG22Lj
	 wkK1R50tfNHw4uI+5AjFJC1X/qKlf7VLC7Fqt5xknL+QHWHnbJFGIqqbfgwF4MSL32
	 Pi5EuQDL0/8Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D85CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228039358.10203.13402218928574696383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050654aa812644c498b5fb716c8b200808722adad87e4dd19d07c272e63b8170
Date: Tue, 04 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762280393
