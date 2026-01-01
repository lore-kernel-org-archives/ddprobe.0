Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E0D1E5B70
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767262434; cv=none; b=fQVzOpLsoDiaxXp3vFUqwTd9sYGC/5O0gxNCriqCU3xAzij5g3nVLve0gm8HsTSmoEI0+RRSfLwJkgxCjoddnxwl8Au1HJH14OPEq0Snem7kCXOqU+/PQy6DPsz5hqmhL82sO6rORUVCptTUp+58qCTg21qGxHQ9WBjnc0oLYns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767262434; c=relaxed/simple;
	bh=6ouiMQU3OSSyx+vlPYCDdc7HzoGm5vbSuWcwc/EZSKM=;
	h=To:Subject:From:Message-Id:Date; b=DHFbw9L3F96cfTvyxwCQa/dMVcwk45hN/BCUGKKjnQCBC3eV7684gnQB0IXdwUVFGFrW5pilEEkYoeaVdXTkO+P5HON1+YYxWpLAgW8U5pQt3rbHdS0JsSqEBSzz3/YKX1EOxH0JP4H8rIBG/i8tIdpmIvmHcA3Ho8nHr/fQMug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQUDPWlI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQUDPWlI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767262433;
	bh=6ouiMQU3OSSyx+vlPYCDdc7HzoGm5vbSuWcwc/EZSKM=;
	h=To:Subject:From:Date:From;
	b=bQUDPWlIwf4cOZZXRIAMargXPyX8ynllEDfAYfeJPKyFEOX8BnGUiDjTjamCipFX5
	 NYtCa82mBhmtv/vMluH5dsz0zslUKLDGXldLhylYK6n/RsC6y5MrPBxfzIsVDZUkW5
	 jZGbbR3LMkYZINGQO4LBMMZdLMddEwN8HUcHHg7fmKo/QK8YvI+vYmZ2pjddnPWnS4
	 uTSkHedNuKiMCWRU7XoiZeT8CrDoPCwSs9n42yHlkqvyC18dUQLtVX0o8Ft+Ix8olN
	 Id2N82PzEzYym77CIHwNVuqxHPkThFYN4tPavLokDKKrBDP2/r5+97Vzc5XZ131zJA
	 zHTmEzPfFRfkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953E1EEB57D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726243357.12940.9053040788440285505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6876b04599827890cd731ef2c1baee902ef9df52e4ff4425eae006d50920ddf8
Date: Thu, 01 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767262433
