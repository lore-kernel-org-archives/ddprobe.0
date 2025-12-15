Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284101A9FAB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765806774; cv=none; b=hyxILyZ2EVsRVCGaAV5PbDt8Kr34G0CQJ8pySEWY+kDcCpzyNYb3rce50FzjQgwwdchQT1yq5Glyu8dto7X5DGFTIKArZpJ1R50OHb9vyX4FSG4Oe39QGfFjhauoZ+sXPM1eUUYiLeM5oyBD6MDVI3R1bRkerGsTsTYCyj00iAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765806774; c=relaxed/simple;
	bh=aC7XqWe07rkty+vCby5BK2KJf9vAVBeTlz5c1MdG6l8=;
	h=To:Subject:From:Message-Id:Date; b=Ifa39TGzb22FqUYdDZHqTiFhwYFC/FQt/Wr3CGRmImDotK35EqjMz92iymFtQXPQfneQsd9ICuFOunzF7W8xD5wREdvBTWmIhZfQ/fnckMfpuAxUejf9kW7zLEgVjBzdydBFGUHGQCXkW3MTnXBsWNyQM8GJz/VRDDnqE64HqAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6Mg1+L/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6Mg1+L/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF96C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765806773;
	bh=aC7XqWe07rkty+vCby5BK2KJf9vAVBeTlz5c1MdG6l8=;
	h=To:Subject:From:Date:From;
	b=r6Mg1+L/Mpp/t0pGGN2x6NXIVnMmKA2FTjtR5D+ype3N7qlm2FjsURV/BN926RvcX
	 LmBDRzJLlJVk3KjZeR3zWNunFWhHsu5BuaIHof1pfwmMXnjfD6Owq3GllIikvYM1R7
	 1Vv1X67mbpx1KCe9nnodPs37OkUme1RppbhV7dd7B9ALMzQRzCLo00s0q4UiRwPqV3
	 s3NkQ8uRfAhO5HsP3AQMLlLfSj3u6V0YmL+MyPZhic/CgUq6Yra7buzbHeZB1pHCRO
	 t5nhCDQp+s7TgitArnPycA3a+ngD1dH8UOGeWijbCl9pgV2OA1uF4R/F3k8I3d5Twt
	 AxKFC+23Ic1Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902CFD5B16F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580677358.27177.15562246007220088140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3226714bb395bf9f560f600233e140861e184fe44254302cb2618cabf76e0d5e
Date: Mon, 15 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765806773
