Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A17CC2E0
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732466754; cv=none; b=eNE/uQo0vgG0cobQSySWpZetHoPOR7vVJb0itFjGZoP+b/MPSnebrZmJ5Q5NoT0e0jGyZqXltW9XosfXkOWWl2Bhs2Hvj/4Zew/9N1hszTPCe+DL6LEQErGNz3mjfJmxHRVDIYEyUcbT9IKoZzZi+gLGUudk2z4Vb7M8GnXhK8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732466754; c=relaxed/simple;
	bh=KZq+uB392uD/9G/vdzsysdx8P2rGAHjp6zsE6+cTjtk=;
	h=To:Subject:From:Message-Id:Date; b=HR0ZlhGCCB1/v1XCfK5gcACT7uAIn9gH/3hnREtjMCFe50tBZCgzQyBBkJcbtnt80ZcxOtReDAhCI0XJLw6ePMPTNwqEsZqLh04EMm1nYytWKcY84sUy7/7lGnL+o2+IDmsNsjoJChKGYM7s/SeA16cgF78n3z3VcR11e5wT1qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofOMA6iG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofOMA6iG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE25C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732466753;
	bh=KZq+uB392uD/9G/vdzsysdx8P2rGAHjp6zsE6+cTjtk=;
	h=To:Subject:From:Date:From;
	b=ofOMA6iGIRcCjrrMTYQWNS1vuxo0mGlDOs8xKqciZJPYmvDHsd/B1TO0doTcouRNL
	 73nB6Fo+YjMwpbNS/WT6aHJiEssP+S5ACG/T4XrYHfGHwoLGejsO2lknkyA9wSDv9T
	 Svcpp+YMwlatRrE1O9ulCM2H34IUp0lXJeAKvahapEiOHm1s5bTkOq5QcWHx2KRJbp
	 iypoLlRks0jkfgJxk7td/lQ8n+Z0GF1E+tUFUfaAwIlhzMW5T12qXmwthzp9tuXR6+
	 5d4Jl4A4WmCtK2mYPB0rKufoVAqTohH2Iuol7h03J/hTbgO4pxWXlf7zIhvpR9sSV4
	 39YTw8Euywvdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCFBE668BC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173246675363.14993.6318574909592410023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b477b21ec47fd7143a7a45b5a105d7c8b84176cd6f649ca0bb67e1c3c87a52e
Date: Sun, 24 Nov 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732466753
