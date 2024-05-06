Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C092F2C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 15:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715010143; cv=none; b=PSI4viroRX+MiGMAM+YW4WWp1zfbicNrNQx1C5ZCKSSV1KnI4dcT30SM9+aXpujnD3Jd2JHsdJ8kEYrwUIK+ql0Ju4RNJbDLdxwA8PpgnaZQiBNwdBjbPJp6K5yKovc5lqap2zQ8eQZCTZ8Y5IF9l9ltUkKovTCKWXqXi/TkRtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715010143; c=relaxed/simple;
	bh=HxdioFc1jFJtNzINbe0WdiMq/yb3w1dzUra5sW3p7KY=;
	h=To:Subject:From:Message-Id:Date; b=lAcyaXAS6QyTEI8FiMDltAyDYTZXRP219oY5Gr0bOIjzb9Xp4IeT70WtbTNVpM5bSVpVYcvJPGFNzJw9Lep4jJsQgbtXHNWgyJQzS9TfODtfZrbJ2j2JLBXqLLRPHWzZ3J+Fjw09uALnjcNyeUb0kdULe65ulXtQWsupSDr4+/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOsGMj3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOsGMj3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11FEC4AF66
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715010142;
	bh=HxdioFc1jFJtNzINbe0WdiMq/yb3w1dzUra5sW3p7KY=;
	h=To:Subject:From:Date:From;
	b=iOsGMj3/NtnWRcyMY3bG4vG4iZklosroKDbKsdzZzG1htBULJcfLdAYeFCgKIOmGu
	 57Gem6V6ea8IZJGPIgi4CXCiG+njUqkTuUH9XrqaNDDf9CqiZfuhZMkhvNU0YIGS6z
	 vBh3MS0CjY2pNFFtBCy9bB1R52aAyAqer56KVihGIj53XtqylEskm5wr9R8inY5yOi
	 9gyZELaS/VlQTMu+emB0apwyUvVt2NGRRJUk/82T3aL1tSOkUBQu/P0Dz88Rd5tVLH
	 9g3/pj/XFoooew0I6dMwcjjEbpPnRyzxkOjVdnz3zgu7JSJbhg0JKMulNMOLteymtF
	 /rcPAJOeAS3ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FF1C10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171501014278.31126.8573542007568086722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9292a84fc62167d85356b14e595fcc09921c979d70fdafffeea44e86b4bd4d9
Date: Mon, 06 May 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715010142
