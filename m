Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181752F1FCA
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755512394; cv=none; b=nZcxlXLRzcs1j3uyQlIjq3jli12sGNVicziiEC0LZ+vJBdI0ztAhYpTbxD6/uuqorO83wsh1q0Xxye8N6GHTm8pBmk3kuNVfRaSTSv6r8P8p7YzeOJlP87EetVGpk3SubmB82jrKUcgz6uhCYnaZhHC1KVCoZ9QQ7080SrhoSJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755512394; c=relaxed/simple;
	bh=m4eXh1Ssw3Aw9xBkj3uQCQamU05gj8pVjvzsYiumJq8=;
	h=To:Subject:From:Message-Id:Date; b=nLuSY5FTzGiVgjAFRTPbECHpQGtrh1d2ss5l2cZ8BbWzay2MmnEl1Uz3M00mklwA5RGOlcjNvJ2H/9jikEeHZEkM/7pZgEv8wQ1y7HN21iEWMoBSIW3dl8xHMOUjpE8S4BLHLGfKOGo6DDPZY6y0rnW4ZDRhFTwirp2RsqQDAik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDb4cLLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDb4cLLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F686C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755512393;
	bh=m4eXh1Ssw3Aw9xBkj3uQCQamU05gj8pVjvzsYiumJq8=;
	h=To:Subject:From:Date:From;
	b=NDb4cLLWUrxOS/Ja1Ofmi0OiAwKyKhxm1x5NVaQv4Tbq6EQy6ZS7z8vBd9mz73U7Y
	 vR0qFls1rV+Q9BHGUdewsjaTarEeHlBjbsCT+3MoUcL+6ZVMyOEKa0OTPayUX5YBI4
	 yRbFrwcwgj/+hFwk/TCbKxtA38VspdYsO27uR0MW+coGGXoc+ZommG2N5Jly/AA+QY
	 S1//SY6uaQdQNGTevFtShkP79CuiAHSXvVpWRMrWxqisu2wL6U+tNKYGDtM4BtV+P4
	 9N970NhKPO72xgbEopLEUWObFyLHBI0yPEFgNEpOSL7pEu3GHmzJT8isDNCglkCGDw
	 dZDaN5lkQbXlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECDCCA0EC0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551239357.25173.615334550612070599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32aa2e7b5e03b7eb938badeb9846cdd8e70264964cc73b926d7bf9acb5f06875
Date: Mon, 18 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755512393
