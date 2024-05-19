Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADCF14F90
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716122543; cv=none; b=h45zCxaeoLyrb2Mu2M+XJazNN2KtGeuvpBWNGdVeMSrrxkZ/h4aoJzGZ6/Zcz8JUyeH3zqIzaL8NPbALUfZbozjq3G/h9+JzWjg1iq1LBtqKwyMkRECo4sKBhcRGjUdJUBgmPxFkg8l3Kq720uVJAPVOTIXPDxtsBbNK1AZYOO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716122543; c=relaxed/simple;
	bh=ADkClIFvgqLCCPzUusbBnuPo9u0XKZKTvSdUYWJOmXs=;
	h=To:Subject:From:Message-Id:Date; b=sQf3s6EZq4bS58DiYP0Hk0PwXuds1RRVawO1kMf6W6mK17URpYNhqTfknWLOwe/EWNXcPxawCxwAT6sQ23dYkShjPsWeGQboXEXqtrI0KJYi4ER3mxSMoInhZu89TaOr71ptvUqGb8ORtlYNV2oGLdiGaTFxKJN1e0kx9zKLzNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXVyW9eW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXVyW9eW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F03FCC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716122543;
	bh=ADkClIFvgqLCCPzUusbBnuPo9u0XKZKTvSdUYWJOmXs=;
	h=To:Subject:From:Date:From;
	b=tXVyW9eWQf9UnY4PcpZ0ZmKijWU1plSOrPYi6qeLUmUme2nL3d0HC6FCkokcA8BDa
	 Sxqgl0h0FB4LOweyAXbr6XLQDSJVpqeWkJGjgVDIYWt+5IUJLsE22jqYToZlP5EYPi
	 zHiSrpok2X6iXVVsw/EjqOv9BMwV7Yu/juKNCdczxaoNORNgwFML+WzkH78jjLAIu2
	 Q62duBzwNHzGB8Wv93BQ8d6cClEyzMvXXWH+ZEDKsDcegqqU1XRQcV6vRdXoStKoW3
	 TU8kyK0TqH/IcdNOyBGPNGjzZa9WQoQdZhDUSK33PxhbKWk09gWRsYiwaqCsCqFvAW
	 72pij6q2InntQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0913C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171612254279.8631.4891787914785260295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9bda33a2c93abbd82431c9dfb7b72651bf3b4b3bd2229f0d6bde10cae99ad2e
Date: Sun, 19 May 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716122542
