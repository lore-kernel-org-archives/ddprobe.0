Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CE733A718
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768044234; cv=none; b=tzbGTok60qp7NDK55M2RhLRs/oBjaGe7jiqOGRiwcK19N3+g2lO9hmnb6Igc9gbeIadUR9dNiNbnmgkh8VLaawwSVc8yDkJJ7vd1n9LCErbcXGlkN17I3UDj2NqfZgjT+wT4ZOLs9xf4KqeS2RrG4bl4kKAtH+tqscE1LNdcXhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768044234; c=relaxed/simple;
	bh=G/fY2gBN5jW5Yk3ld4/9r+/ob7/rxQlRKZ6Et/UCwCU=;
	h=To:Subject:From:Message-Id:Date; b=PAv9qfUQM1RCwn1S2PCpdE0HKN9aZblkAcEBux+1s2dLp2SXwhzd8Ym+FKSNpRVYVf0TXJqnXXEPu7pyFhjUN23efAwyqmwY53TCj380GghrtV7yMD8EE0kYomxI0Hxmop3LkgQAGEhbVnnJNpL38D3zK7WgeshwLINQeIRifyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bF6Z5ODf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bF6Z5ODf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3ABC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768044233;
	bh=G/fY2gBN5jW5Yk3ld4/9r+/ob7/rxQlRKZ6Et/UCwCU=;
	h=To:Subject:From:Date:From;
	b=bF6Z5ODfx+fCfL2pHW1p+OcdhswmRcUluBl0IjUoeu7aFh7TQWojqO5/MQfUH6PmS
	 gaXEE6Taeb+r4fdQ7NL+wXCQ03S//PMqHsxC2Ocnnm3JW+CQfPRH7l32uafmWcnCsO
	 ubYdoa0Y0342tkmIEQ6Zzpuy2G33qgIb1T6chRbYCpBjFLCqLwUuCvonDBPgad2fDK
	 2QXxR1oKNrffJNw4IgmlaVVOtk+Vb8IXxWbdTD5cviTHdjkKy9MZCdRGdjrLMV4x2v
	 FKgHM0ipuGivaAlny2vMF4x4wItXKiV7M8j1Mk3WJJi6uepSxDrjU4bY4zg0klxr0r
	 3vI4LRZHIKL8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD1D277DB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804423358.26276.9290500871889876641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18056101b31b2054632eb92b923bfe395fe4a7afe20e86baca7085e1ff61386
Date: Sat, 10 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768044233
