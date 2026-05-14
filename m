Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2336346E4A
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778794833; cv=none; b=TWA3DHJjVo4ZEEuQeRWubd3+6swd9i1QFqQmd0/F8Gsrrt/f98ESylQFG3A9qlkqtQ9COD/lVqXZ+doKm5IBbH+6qIcK/lNCC1Xw2uz4fkU9Jur5qI+bBwUF/pYNbzzCNaiFdzZTMhZSVALKKOh04Ok9bnEsOi1yrTntB2sfAaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778794833; c=relaxed/simple;
	bh=Tmxjh0JEhhAphFZWU09wJC6xhIVXMsqhZHo0+0NkO4k=;
	h=To:Subject:From:Message-Id:Date; b=QoKhuUXVvatIkPfTf96G/LnjK6nLjYJdRoWNxnpBDf2IrsPtfb/ofa040mh0rUX3hEuxmzfs/0VwKgd5vw9KhySn6AFxPqXYQDLlJ3jrPSurv+7HIVqLMKiV8u8iffHRN4yKFHXGbBGr1+W4PS+wofZHNoL6WeRISko2JJ9jUs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxZIayOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxZIayOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D52C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778794833;
	bh=Tmxjh0JEhhAphFZWU09wJC6xhIVXMsqhZHo0+0NkO4k=;
	h=To:Subject:From:Date:From;
	b=AxZIayOroW+OX6bTBJzQx0nx22zkf49bZANSZRkXBzjpe9/g1cclZc/DQm15feDfn
	 YsubQAaxpHmV5K7byihoFLvwSgcSS8Iw/Nb/fLmAwVbPj7pDldVyfjpXoq0QAMbZ5V
	 eWsUSl4EVdgC8Z8wBLUUdClGvkDXx2u1e9rgCpkGtx7z+P5IR3VSWF/6+S/b+/6Ap+
	 A0VC8WIJhU+UO31K/7ik56/H3m2USa9Qv4DazFFWikQmeod+boU5nxzg43vtiFDDWJ
	 r4COGgo5HQnKzUEWY6xR41w3PxUrUJ3M9WwFEBsN7TwqOHH+RMadG60Uhs1MnbTTK4
	 PpUDYBlPVhWnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA105CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879483368.9852.15849982225606213879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5433820fa8ae76b78bae269223542d48616408656d691b073ccccbaee8f0eb4d
Date: Thu, 14 May 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778794833
