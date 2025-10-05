Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FE21A58D
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759686595; cv=none; b=StbyCIIVK1qsvq04HYkB6KNdj176vd8jQE5L5UhVKYE51OJ4247by/cRR2KN8f8qCBXiw69erP9UHqai96AMrXWa0gEjVf6Sgx4xG8UG00LNKD1mfwPT1DbkEj1ic+MfLnP/YKbF/Gaod7bY51Sbs1B8Evtz+JHPMkuyEWb1Be0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759686595; c=relaxed/simple;
	bh=lVbEBEyYylcSgTuw2FFjLBCa8twOn4s4SgaTer8WNvQ=;
	h=To:Subject:From:Message-Id:Date; b=CIbStC+0HtYas8eRjSAr/TdiU3m6F82OSuT+Ys/P9XFy0ecqfszI/bLnW5LAeS0RWJSVvWCGqpkIGToVeFFKGYoFWfmjazPUmf8YHGkV4L8ik4TR0ysno2/YVzqzmF4tVumKyEwBM4hs7WQxN0QZ2vPJWyAZn6e/bcYjv08XJaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDmIqHkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDmIqHkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5AC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759686593;
	bh=lVbEBEyYylcSgTuw2FFjLBCa8twOn4s4SgaTer8WNvQ=;
	h=To:Subject:From:Date:From;
	b=gDmIqHkBWqmawgfkiZ37TgZ5Sh2pBXPDSH1+rqfElEnAf7dZzUwBO3/Qa0vQ00Rfy
	 KWtAcVBRIxx9HsCLq0tSuZuNMy2wVR5JgR/VlRL5BmGD/E611dq861YV5vvK8r6k84
	 NYd+dX1y01guXrRRrfm9n6NesjZQvFtlMd+k6WLE/RGcvnyWp3/RyKvR3uSnXwlxnS
	 PjTahRIQef058u8LTwpIynREOlqRV9LK7jbknOtL8YWqzn9n2aUR4ffom4p/czocuv
	 TQL6R3kfhmddziDBj8LzSLo80SkERJLpdz0So+TIF2En0xnMf2bdd9fcUKRt8Ykzcj
	 mDZpe01/EWYQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE2ACAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968659358.24888.15748011800301887529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3742214324ddb8eb8f279756edade989c98179f20905646b06b741419233ad3
Date: Sun, 05 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759686593
