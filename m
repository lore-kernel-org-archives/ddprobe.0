Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169FE23C8A0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756241394; cv=none; b=XcbipbdPQ2Gu2Uua6hc7tn05SG8tZUPdMuiT9G+d8vvCyLFb9sSjdd+MFWrD+snlSkR1KglruEqm2k5kHg5jbdizfRav0mRh3Afaaex10r6RFXspHFtZDdafO1TPw8VM42izNJ657kpjGsxNXJpBzsC5VnWA6uINEVxl/q2ItE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756241394; c=relaxed/simple;
	bh=SoqIBqmo8am7o5CNDIFQ4tQxFU0aaGW8rsRvFleCuSc=;
	h=To:Subject:From:Message-Id:Date; b=gCZuQqmbWuFvNvvCsEyUYTgGXO1xLJups2K4ni3NsHIjjppJg8bPoxXTUhVSYZ9Nk9lBsOZWEdQiGv4k12irAkkpSKoskotWJI357mfYqsKnZlNP/TXMCem+c04RmBu8oKKkkbZVKTgHYnNzqCUh5BA+1VjUP7MZPM6EBr1PZxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4zicTCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4zicTCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E455C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756241393;
	bh=SoqIBqmo8am7o5CNDIFQ4tQxFU0aaGW8rsRvFleCuSc=;
	h=To:Subject:From:Date:From;
	b=J4zicTCGElJtez2NUc3z0yYSDmhdQuk5LSoC7qNWV6wh8Lhzow5612o2EbEXMZdYz
	 8ZliWDTFtsNBPJFodjtGoIc1bF1gkoJy9GxiIVaDhuOENenWdgZSFp5/A68jwQMBwy
	 Bo5WlbmygqjUceDfLcYeq0R2MvOsX4rx+vUqlcYG5/ihLGhBn8N6MRWtQg03Si6+pc
	 B4vQly+HLiQM4TzRMdsBdy0zY3TtnsUvJwJTRjmV0E6l84M2fb7Jb/5SJYacjjCMua
	 aFcwUJFAaYrdMkrUOzp5eYCSklaIpUbzvvpgh8fsXWc/BAVRJvFBgbZV6xKLod9dar
	 US5DIUpvIBcCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF16CA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624139357.8504.10607524441131261402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38e04d987807b624684172689847a20c71a6343eccb6b4bbc5f400146cffde0
Date: Tue, 26 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756241393
