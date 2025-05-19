Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F924431
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747697394; cv=none; b=m+UcZMVxRUguSn96OCY6DfPAOyxDyVCWwJQieBLvog64mNAvau8BN3Vhs8NW/ggoVVK4ebDLqB3hUMFcmjJO0bLVcI7nWMW9FRT2nz+85bUmeBmyv95whTuSq+B35nDT6RI3Iv+NAc43MnYXj4zkRNKBsob2dwdmwC4yRm9MYAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747697394; c=relaxed/simple;
	bh=4CpZ+uJZOZwNJXSSr/HvXHu8nlgzWJSZ3YnqKmyBGE8=;
	h=To:Subject:From:Message-Id:Date; b=mPiC7BYNr4gJMYUc1bm0By5iafLAZ+ze3Q3zN80J74o/ZcipybnsSOOuK4PBfbKgZYjK02Be3vnFgCTRBkdWv3JhQKvOjxDMX0RG9aqn1mbX51iTSA8dnJRhS5uHYjlUHt26pIYfk3ZYtdpvAhwHojfii4PYrs1eRlBtv6JURRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Db9m33eW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Db9m33eW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A261CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747697393;
	bh=4CpZ+uJZOZwNJXSSr/HvXHu8nlgzWJSZ3YnqKmyBGE8=;
	h=To:Subject:From:Date:From;
	b=Db9m33eWvmMkqRN7aSg6AczhuQu88pUonn960j349AWAyT0mEGrw/QMWYlgR9+Lgd
	 F4sONRVurpfIrJMstLq+TjGvHOf5AyPnOdxwfv5GAvUoVZ/Q2L32cxGJIE8wrgNpLS
	 6AEIYaml8AxlYuh9lCwfhqfGDQvc/Ah4DnFVMxRzmIQ4Qa3x3xOHf4Fv2Xd+uB3N5/
	 ego13QTED1qKq0cUwRdZtDd07Wx4xfGaWKq3bbD9jgP+ngPONjqFp8QlK7s06nQcJl
	 UOv8rbpHjKxUdLvT3UksuXpzcCzcg1PSBat73G7ywH+7kgN9khjk0rEbKsIxNRQ86E
	 ck+0v3Ek2hPvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90733C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769739358.3201.958854045698002432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f29f6166b3c3f7b39d28775c76fcc0340313532398601151d97a800595c013fa
Date: Mon, 19 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747697393
