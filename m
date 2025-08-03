Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179BD4A28
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754254794; cv=none; b=aifIoO0Jg52T8Qq2RSILq8whaRzu32ryWj4e5HOnko8UbfUDVjBrXIf6zSwxH0kJYpvSE0jJPl9gJ0E8eVoRIFvHfbxzKSwxErIcg0BKXpaq6Iqe6qRHu+CzWAqjP/BJRffNyQ3Wf7KDS0RnuY5aOT2wW++TfRv9OJ6QNCSnxlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754254794; c=relaxed/simple;
	bh=a2Qi5CzfftsCNcsVVp+6krW7YZgt9NIC3SBuWBsmWro=;
	h=To:Subject:From:Message-Id:Date; b=f3b7yNy1jhwoarAeWD+tE8kGWKIy08lA2lpYG4gcrY4m9asGCYe/82Sx5zOuPZs7wMd75GNvQTfJafT0ZkfQeaCGqjGR18hPEpSWW5sBR/Q28tQEXcYWuRw9VItuLy79RDyWvlxwQtZlj7I6EyTUxDNhF6GBUTL6Ceym5OsNkao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWouSkSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWouSkSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00CAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754254793;
	bh=a2Qi5CzfftsCNcsVVp+6krW7YZgt9NIC3SBuWBsmWro=;
	h=To:Subject:From:Date:From;
	b=HWouSkSeR7N8GFg0extEKdkG8rWpF+HXiWXIP59PiMnIJhrAAKL2ESFd4yiKBk6ED
	 V06kYF1JZWI6UsWx0CZzYzslbGYDKGVPXjCV1JcjDexxi0nmZHg9wzSfeD3NKcdRZu
	 d8aGr+xpeI6Eyx0mnfVK7PA3P+Hmm/d2m638zUW36dbEw1/iQSFxvnpvA6gDLh8FdG
	 HsJCcoJ7uPHNH7mIrA5C/bh/t7hGsYyLwye8fiNxW36HQ82YdpvU8S11TmnvYC/h7U
	 FvuCtJCnKqMvHcoocbpABSNwYGAqsOgvIwMms6AxMR3c8UZqkBalPt6d1PyOlvPDmF
	 hYPzyn7wFF2yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDAAC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425479357.6794.9063533991741907404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21cabbc82d162b108025a050a1aba2f04ff73511fd38c1b083716b1946809b0
Date: Sun, 03 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754254793
