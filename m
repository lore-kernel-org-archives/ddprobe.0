Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACBB79DC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717792643; cv=none; b=dmib8Zttyp7M6vFg28G3Fs1E6MiElk6duuG0tZRXoEq/pYl3fKx/1/+k0yrKaORXGb5xnFyCaUHQfASjfTwJY0zMmTF8H024UdR6t2rA/WC7gxy96zopdH3FaCBBMPJ2RXBvRS0/9g+f0J1C+l0l8vl4MI/R4UcnMjhv31uAx/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717792643; c=relaxed/simple;
	bh=6W3KK5nU/9OImPSfLNT6Ok+7svXqE92gdKy35W4KEkA=;
	h=To:Subject:From:Message-Id:Date; b=QWXFC4UAjCEy3sPMT/qqgKe49crMF9wZQ/zFLypJc/VmhXk2qtKu+oLfp+IshbN/Zsm/+y3BieQiXaL+oxM7KJeTYY6zFxuT0xrieRX+gXTxcvLUnWaLJi7z5gMkOcf1zjwklYWVlDxzbSotRrVCYJ9CHu33f0BkIUWOyQn7Cs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LB4DKo6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LB4DKo6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA139C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717792642;
	bh=6W3KK5nU/9OImPSfLNT6Ok+7svXqE92gdKy35W4KEkA=;
	h=To:Subject:From:Date:From;
	b=LB4DKo6KNGp1+9LkXX8h4nq0+vwnP9ON3kqSZgrjaEypW3h6N4wXqWpEt36W6+owU
	 OIBT88+8P4bvTyU/VYCF2K54U+SPbtrG+fYTLoejN12jGdxK+lZJJhwEdL2buWA5Om
	 vXkt4WR40e7ykrHM9XRzsAO2ERN9CqrHEeSbPFmctE16kOgTZEr0A4WSHFtZOZ7uNN
	 X5Nvnhp4WMmgD+v73JvBYfD6JE7HEjeWBBjAlPQwC3mt8InGw/kw/HJyrlJrvwc06+
	 48VLMLqbknLogcfzNjA5WH2LQcIbVcnjdh4FAtEm2UEUTGVBM2X9HdJ9wbGn6Spg+r
	 9CpKyi8tUdm7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C263CC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779264278.8216.5762359278545977385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b19ca19bd65bd7f7ab9b00a451d50a2c83a56355a00ecad6ea60d6c3aeaeb56
Date: Fri, 07 Jun 2024 20:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717792642
