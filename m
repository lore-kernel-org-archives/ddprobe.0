Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9A23AF643
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774274694; cv=none; b=qUEg7XDlbv8MQlR0Uc/s1Xa5M657J3EkfYI6fh3HLkHHSXnSYYnkCA1IKFm4jK48tH4XFrCHA3SUDL7tRR445yEtyblyAdYJmX8D3dkzS2FkOtpRsNR9BaxoiwQMz8znjjYax2IC+Z9W/5w47VC3pWNMebn+85IKjA99Y1uK5Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774274694; c=relaxed/simple;
	bh=9T3G+H3jknOZtlCls9yvHBm5EQkourpDboeP0CzAJbI=;
	h=To:Subject:From:Message-Id:Date; b=BRN/FK0yQfTU1VBoeQ/i/ydj0KkN1ScWTd7IfbkGsNpcDQD/xhwaTiajz+bPjeJo38v+wRragjKM2HwyOWGbm+8Azff2NBjU1X93IWFpGf8jU4auD8NfkW4htfHV2ZLOdu7NWk7e1TLLvYxJ5fQhbmwwcJ+sZ2rt2U+Q7Vk7EYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkDj3M4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkDj3M4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A150EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774274693;
	bh=9T3G+H3jknOZtlCls9yvHBm5EQkourpDboeP0CzAJbI=;
	h=To:Subject:From:Date:From;
	b=DkDj3M4m++WNf293tfO5XyQGF862PiNjyFsPlPwsw+Z3LG4g2iF3p3KD8NxkudcWu
	 CHXarGRtwxCe117+C8rdxmLLQMUP66sRe2+2HhXW3wvuE/jkF1iV9nw1E1s3IC9sTH
	 guSWK9DjuR11dK2GxfHDLCaA/SOTgaHMRhYf8Zy9Ke+HoeSUPgxR6CvYhaELvzGqgB
	 fYaaJ6i1ujnILl/8UlfJIiaMF01g5I2dMD5SIJxWeN74Nfzp6IrzWQCPLoCCcYtgnM
	 xh+N3B6Y6X3ZxghFZ0/9ICt68j04ij2V1iJYhtGnmZcxsLsMqriph5kSpF6qLABWH8
	 wNP9Vw/3DJGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD5F46122
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427469358.19344.8033199717973248250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c594edfb9dae22042c8233659b146be1856343ef8bd9e040260a97131a43b9b3
Date: Mon, 23 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774274693
