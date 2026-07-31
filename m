Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A242214A60F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785475234; cv=none; b=c+sVyiJYZA7C2BtfP4JjpfZS/Qmcd0ayFKZzo4Jrt9QLc8IWrSM/AmsQ2iYPtd9vATa2g3yFLyXV6xp0IMH6aU6IedSzQ41X0TFKNxd2Ls9scunZs0V+/yPnSqGODf8WPZ5+HrWj1FUbm2ovq63IpVD1fK3s158/r8oF6L14zS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785475234; c=relaxed/simple;
	bh=MTRyw/YyuZi+GHz3hN8rRjvyaS7LQKhHlVrJigGNVfA=;
	h=To:Subject:From:Message-Id:Date; b=bAFQVv8TmlPJimB0yVmcfQ2N4w4iWTI3u+gZRfcJtNvU961qMEUBu7z9TLmMrUhyLQVa5EYpaqlsdXirxFTsp7FFNoacQtJAnRiNlzO4whA+ZjGkxoybyR9YVDXtg1IAO//CBmhGlGdEyzdhvKF4uS8uXvdNrlOMxVhIRl+ebEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rg+pcpOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rg+pcpOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F035AC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785475234;
	bh=MTRyw/YyuZi+GHz3hN8rRjvyaS7LQKhHlVrJigGNVfA=;
	h=To:Subject:From:Date:From;
	b=Rg+pcpOEfWzp+JQ4jr6j3ALAvf/cE6bKdUiAsRvub6XF2S35F/K8MQs/GwDwMYwmQ
	 ojumTVONGkRBT871oQARsa2SsXRF/6sIe3W5Iow9ogvNrnvrchJkKbwWmUgy+8R4YR
	 1gNFXMLHak5A4rTiG9RSI+bwzWgS4E3swKcnkdMcekAa9o70zfQOEThJy1dnqcUJHF
	 gOnpeb25YZT2v1QxafjFt+IoixxL7Ch4B0mQSutWpe90xCWp1+GINfyaRDZQV+I8Ls
	 +fRM6/CBebfs3UZcw/6cI89oPEF5cDzzt/PI4IRqq0C0owR1Q2qd+RNpXKtTI3AMyF
	 3D2sByJ+oYlMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD062C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547523368.13821.16698195067567604372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630547575017daa5ec73fd66f04739d5ad8be459ba72271910be8cb0c05334ac
Date: Fri, 31 Jul 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785475233
