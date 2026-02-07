Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDB023B63C
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770464034; cv=none; b=iDdbfUa9Xvbz1I0MGnQwF4QmB/wMYXYjQTinM5dsGDX3a/nHzTBCJRU8r3P6BWhoUc6bcbn7YnZQy7c5W02JT+Buun7aYKf0FhlNnbDvaXXQVgk0cSxphQiYmiZOB2WJrtnTmzUCkRVXDhaZeQNsXyM3NgQQtaRhq8j6kKjkTj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770464034; c=relaxed/simple;
	bh=oypxFEOFUtb0uBqcvzirQYSM0ShfSes5X7Yp0CgumHs=;
	h=To:Subject:From:Message-Id:Date; b=tiproxI6m+HLfTgmh/gPi97x4ZMV3zVe0sz9jBjGC1Gj5B2IFMVdBi82MChWUUfW3OLZZQHzCBAXUeVX6nt7/42NrXpW36FvEG+bkh1TpIt40iqyTTLjbOO6PvYJmXNxdnRiZ/YlweUauo217z3Neph+yljn6DwmdCQVfu79QnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcivtUQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcivtUQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2B4C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770464033;
	bh=oypxFEOFUtb0uBqcvzirQYSM0ShfSes5X7Yp0CgumHs=;
	h=To:Subject:From:Date:From;
	b=VcivtUQ8xSiWXAcp9wFFYMbg4FOhZ2ucCJ2BPnCMsLv2Jtq7X6cmnfhWVivNBBXPp
	 MAvznfMn9SExIGKSp9vQGZZuiwEZEGR1MGszH52QTuN7eu1TLHS19ANfT9MRMlYBCo
	 zWghF8udGUNe5I5PrKzHa1lJOW6rsGux4T96nDZ91QxL01HNvqgL4HFEED/x3vQRkj
	 BRASzdgcDjoK7iEw9gyCCwb0V+7k3Mmz1xjqjhhPN9rN+Sirq7y/qQZBD0YNPtrf1r
	 JsDlMMbVeN24DQUFklCJzmivVam1Yc3g8hgkM2FBDRajOklCqFO8sm+D5XVg+jOmWv
	 qoka5GxzSEGxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99767EE0AC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046403359.17605.11461372528933257408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602141613cd45a1a9ad83de75e974d200ff27e3490af764f1471356435f776c9
Date: Sat, 07 Feb 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770464033
