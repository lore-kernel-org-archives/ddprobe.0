Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2564F4C97
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766222034; cv=none; b=HYrmhKGgXRjrDtYh8eePgDF7yHj1+bRAvG+nK3wa+T6g1AP0NYQAQIoh3FnyiZqcxrjlnf4KDfcBuCOEl2EXxivt0nGTe/bD7XML18Ih1InYnszX9lCFjMPBjUY5dzO5edsn5IFmTqUMVrY8kj583ol3J9IkoW0oZpUj1lLJTXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766222034; c=relaxed/simple;
	bh=b5QWfuxLdgQ2RQxrj++O8D10h6wBAih1Gwo9Gq5udbw=;
	h=To:Subject:From:Message-Id:Date; b=cNKTn8gnu6H3jyurSixo5LyfO8tpPgaWD4UoCQ6NCPJvGTNXGvnyaJZhDZCIFdjgmvBrsejfXH2vfBQpdl/y2qjsN6+Oucj71UMTHUHdXOCJHOgeQDPFJV9qj3VvYa4ELgUHWRRau4s4XqJndzxlu167o2oNspuI6/JbbofBQoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lh1SYe9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lh1SYe9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9E2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766222033;
	bh=b5QWfuxLdgQ2RQxrj++O8D10h6wBAih1Gwo9Gq5udbw=;
	h=To:Subject:From:Date:From;
	b=lh1SYe9+NDrcAlMCzBmA5H+PafsM6d5j/UepdMgIAcAbZpZfuKUt3T+5TREocDPFZ
	 F3qWt5/eZbZdr2PGO+f0cMZo2aF1lhruinkSWuKkrx1kdKhozfp7TEXq2ARVECtPsO
	 mc8+PuHK4JaKK1JheXmLBevykE+gBTdcwXqBaLgLcMCJoKcH1A0tqRNN4vR6tzx/PV
	 JyL2wnKHtE+ZrcqXuLfhILGNJiuO/DaonUVD/J4TzvSrMhcYjADka9J8IT4xJ4T1oO
	 eR1eW5sGdmdddosrpDPR6jcZ5s6D7npCGwFZGSMuQNUacfj5KiuJfsg2qBztaGTszv
	 caDVv7EwUYr7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE20E668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622203358.23607.15353191535918970097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1706141021703f47a042ac631a21a55e2ff722d06c95612959d13ca9f521b199
Date: Sat, 20 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766222033
