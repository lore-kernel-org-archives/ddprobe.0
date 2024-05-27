Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D4B16133E
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716819863; cv=none; b=KqjJl1mv2tFJBlMmLOYiHL6em4PZ0PyJucUhzuAVQ0dkGSud3c/PdxWrS7XgDXpK//8AidxpWhj2YC1K5BtwXC3DR/cQq2ulhtv9hhbEiNmpKJa2Y6xNsKfDFsocr/NFPEytsQ82O3UD5Y+UqbL/76VdrlhjCZ4Lmsy9iW4su5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716819863; c=relaxed/simple;
	bh=v+3xqR6Qa1nSp6TS9ne9JgFoSc4E/yWzD3PxxAE/U3w=;
	h=To:Subject:From:Message-Id:Date; b=ReXuM1vukHaTgxJvux36o4GCj6wEMGbqkoFsmF5xsEEnU+tYP0F3CXzLBFxoh8bWDRAP8vEqSFzNuJ3EioR4o4z+KxFnS5GFzDEv/4FfKmmuth0ihwTaX+H1Uubu2OKTzYcK8belA+dfgXDQlInguDkFMjtFdpGaaT50iLT2UiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCs5A9BK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCs5A9BK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE97C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716819862;
	bh=v+3xqR6Qa1nSp6TS9ne9JgFoSc4E/yWzD3PxxAE/U3w=;
	h=To:Subject:From:Date:From;
	b=hCs5A9BKiwJ8Fzkj9FEqXyj6mzpGo+3nnivzAa65+uK+TVYzA2XBo56NWD7/XT9H7
	 xoULQBpPBs1iXsTy3woX09WHNTO5j5dCulU0IXY0FdDB1TvxJBu6S4fqTWWlSrKQ/O
	 83FBG5WFCkcn9gvIwHDzVf5HkX6tKCSuzM3T9Ph9ohNZFkgEXBuKhDjbal767q1/sr
	 Ix/8Mp04jDUNlhdwiyxw/JBoBhAaLAo3a3CMF1hH6DwBGhuAegy0YRzIi3TNc+VZ32
	 8gVoXwwgrl2EokjVzC12jxgAQbF0g9vdnRJBgAu4HzuPJ2aSYvcCPPR4jA/wNwfa1w
	 AlAegZOruH4Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B10C25B79
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681986280.23835.7290720954876230734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00df5174c6bece710f62b24e2ee0332573d8a3f55103a6d1cdb7aae2feb60bd4
Date: Mon, 27 May 2024 14:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716819862
