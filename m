Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3497D34B433
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761246594; cv=none; b=VgPGLfMpb7EDNsg5NgfcKy7kAODQQh7fBTahnq/waM9fD1TKMel/LvDravQ8n7SSia2dbwVvMQOfEcNiELRl3ePmUWmtNOrz04FQvZUfVVhFkIby2HoLsWzK+FdgCvG5jh4n8D83c7h1GXDHVYNfcTiikiettGIyeZeV1n6dMWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761246594; c=relaxed/simple;
	bh=yyJPHUpC/pbMAxrGibFSt4X3WaNZHtRfJcAQl7r/c1w=;
	h=To:Subject:From:Message-Id:Date; b=SrzF8Jp4tA/uq3PTlhCvmkuMtp+bf0LCrcxn6F1DNReLLaTxe0KkJK8YRsvXg6Nf3Yig7xIKL3mUWdxXkZC8v2Jq8jKdn+4Cs7pBPQdT4v35nZRL0R5Cx9yDDGawq5Ow1QMB4PG7774nbx1EP5nXjU3tMdNJAwsym3S2fBhv/98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaYo4IUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaYo4IUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E6BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761246593;
	bh=yyJPHUpC/pbMAxrGibFSt4X3WaNZHtRfJcAQl7r/c1w=;
	h=To:Subject:From:Date:From;
	b=PaYo4IUsvFT6PdN0RD/A9UAq0qRncmwBbPJqDuGF4LK1vYwIdQ6ag5pAaYgGAMV8f
	 cPviZXWmW/APdR1OERfgN+3EUQCGA07M+13+zn8JqVG0UiOwoalFcHlbqeweG5PXEh
	 14fHzaok3fZQ/Wl29XbB6YJ1KV2RSTk3gAZ2SWkbiAoG9CknkBm/p6JgU3D0+V4UXc
	 b0dgRHqf1W9mw/dRYQGEEPCn17vGZWP4zsjEie9rI6x4q7/XHwWByIJHgL9vA7RKY8
	 zKOdiaDkxFS6+JYQm/AUUZojI/84IBcddqI+Yi7kHikk86tA+6As1REyMdJ/KqUc/W
	 PEDcokTyGIqnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA9DCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124659363.1046.7918620071317287801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55beb9717f50ba7317cf96a6596ecaf375ac079089d3340a12c71c15162d2ffe
Date: Thu, 23 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761246593
