Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB1D2E2EF2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760997594; cv=none; b=I+JwwG4SiBxrzVhP/nkGBGEnfP/hxIzo2XngayThsrErhGeQiX9Wymlkboav+Ynes79NcqXcOgfOW7pML1651eRPjZ3fapjxEKVZ6taLzVRfAGh4bFX2b3B/OeH9+vZhuqUAXiMUyJM1uAvUn+lGK6CwMkQlA22jvx+qRh2hNo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760997594; c=relaxed/simple;
	bh=A5A4Q0CIP55eCZ1TPLQWLI6fO9xTK/6pYVFP2iZWWUc=;
	h=To:Subject:From:Message-Id:Date; b=PP7Npt8DI0I6Fsc9/JLaHZ+J1/Oxio/pwDS/k2lCLzPdfW8U6SUyI03QRxuK1fLJN2DJuPDWdbj7Go11AYJnX0i+eHELu0n3F8zkmIITOGPCiQkudo4ee++IoReR2skXfadWErPOrqB5FlavsfSIcznx1zZS3lanbbq0R8l5Q/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sy8AQkBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sy8AQkBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4667C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760997593;
	bh=A5A4Q0CIP55eCZ1TPLQWLI6fO9xTK/6pYVFP2iZWWUc=;
	h=To:Subject:From:Date:From;
	b=Sy8AQkBLAOIS7Cq5jVUXJTYaj7qbOs3X49kyro6rwqTmMnYCDeYH1+JelAqsmZzbZ
	 Q3+RVkXUZ0oShOt3uhIPpIVVZ/Pn++NvRi0GLRsnjdFZA/9g1rgYdGrG7px7HYL0rF
	 9MGboBsjQEUb0Lt1i6ocyDWEzq4yDKyVOYMzUmfMfGL3xNalaZjWi5SBtVsAQEfsK1
	 3W+FkVW49UKUfTRFxfJzmvNDH8bDKAukahzDSvFnRyVSf2mtEYDEZoc22NFFZjd22p
	 BvW/Hl4kx/vzNcCTxvUNIRYgdlKqRu9go5rERznXH5R+4Ed2GzBB6b4h6OPR2sQz2Y
	 ErJXTlhcOWxGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F830CCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099759364.11295.15312691905407564650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e618680ea4df40377648a021ff5edc8c37ffb5a78bafb153ea11112a930b343d
Date: Mon, 20 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760997593
