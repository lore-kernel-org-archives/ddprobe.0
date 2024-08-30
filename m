Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430704204E
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724991954; cv=none; b=QxXxMtq9+nx8GAhVHJAyz3+myqe8sGhciMT6RYmmCLLVjm05fsmItj5+CI27FnhkwLyXg+UrNMi2IQJXNQW6UTd+f7GJQeIEGlhfjSAXwCryW7BEEVOOLl7Gd4iZRJTT+BV9wQuImce0BP2/U4/rAphUhrMr3XWLgkk9GHVuE3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724991954; c=relaxed/simple;
	bh=dOYkwojgK0nHbmMARgoPiegcZNylzOmqCeJnuFtVXgk=;
	h=To:Subject:From:Message-Id:Date; b=f2Wsel7FSSvTXGp2xGPucyF3J9OM+9Mupz12bOLxUtNbfI6GIvwog8sQV1qoi11cDciv2W7+MfZ/I0Zex5qX0eKJYyugnGbeYI4EseVb/gMGi4OXZ4EENMXSJsbvXE2AM5er9G/X/RqoIR8eQp9HlN8BPwZcWEuTryr0jByDa4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnm8zdry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnm8zdry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B505DC4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724991953;
	bh=dOYkwojgK0nHbmMARgoPiegcZNylzOmqCeJnuFtVXgk=;
	h=To:Subject:From:Date:From;
	b=bnm8zdryk9IDGBhVDYIl7PvaQ72xJnAYn6Qxc/t7qv1/2G6c0RrXcZ7F+9ELvO3bm
	 1cgka0p4uJ/kswAPdDJ6G302ThQ+QLq1J6/4M+z+masTFM8HR015QkJP6FQiYhgb+Y
	 62NoqOvN4oAzsFn6CQlaq/TvoLSC592CFjnDrkmUBCuvzFp+h2E+T2i6Fd/V6ck1tF
	 JUg0ZrRnL3g86zIv4E3+gMzvvJrLjNaY5BAytnmIRhQ4Ka/Q2k5cOOztK6y9YMme/O
	 q/RKdW1cvpNWYUtmKO/+zJmi8aVcqlUUiOVLgCvf3Y33JaVwK4fwRiWiZU10TdnzMX
	 ZOOFfpswGwQLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E06CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172499195361.9612.13272994668662418951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ace707487f27fc08bf9b8794777c8220ae342e24cc76051006111453d83ba91
Date: Fri, 30 Aug 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724991953
