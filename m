Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094E52D839C
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773255894; cv=none; b=aw4czSFBL3G0x3/RbEBy0oJ5ktIKULh6bw+riLcExxe1jpLwpkOLUSv83z2GM2X37smJKBHATS4PXTm5FBWtfrZwU82u/XLo0KXxMF2mXM4M0i1rpRlGFgrXyigOGVU0/DfjAdGMoAv4oTtwRCUTb1kdGmGYCYFEKyvmRBH1Y3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773255894; c=relaxed/simple;
	bh=NXHJ1n3CVskxDG2glYv+i0AbKmjWuPcTaUCjEc7mWoI=;
	h=To:Subject:From:Message-Id:Date; b=A4c2L0bUb8+P48DTG9RX5lH7+oHNabbXU/KV+whj6nF0VxFJj9Vfs8ms3TZ2Z6VwVUnTgWjvy31KaVwmoKSC84NfFBq96DoSNckyaMH0iw+sQBx0ZmCVbvPWAsZ/NFe5EgiBl+SnkkliSXWe4yiZ4+yXHNLwi+tGBEq5dy1lgbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTLLlxsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTLLlxsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A654FC19425
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773255893;
	bh=NXHJ1n3CVskxDG2glYv+i0AbKmjWuPcTaUCjEc7mWoI=;
	h=To:Subject:From:Date:From;
	b=FTLLlxsNbfeAwnyzq3sO7wY8X/GkdtCGTU4cPh32dDnU95s87B1pI3+Ua7ajpyl4a
	 /h9Mc1EqI1RIunoMzvaetPkyijHD9fcJgfaovDH1Uf1yP4/Z2wVG4FA2zXrA/ELjUt
	 2+rA/U8Vie5xfL3lXCMwQz0hxgBCUgMTIiJKjdUsl3uKwo7ejoRiVGpCZzecnOkV42
	 2kggkznh05p860b8jP0Pi72VV49Dmqv3N1noIuK99iJMyNv/ereJy5UgXGSBWKBPmg
	 WIhk3MxGqv8sKdp3xDVSw9/dqseUaDJclCgyFKAKvNJKckE0OyUUg6BtsRezCX9UbV
	 YRJVSw89s9jfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE31125865
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325589359.23283.3656236439625372514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff778e0569b47b735f7b82f592585547afa5020f129c041ef32e86b8da98a4a7
Date: Wed, 11 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773255893
