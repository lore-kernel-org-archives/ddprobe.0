Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF87481DD
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767252234; cv=none; b=sgeqJB6evnzZ5W4J04kg3Xy0kwXLOqtCmEikpDHa/dwhDDSCv9ZUdWdFy4dN09Zz7TxLQ7XgnDf7xFUvl1Zz7bAo6rZOaxFhxg0F5CgMW8FVk4Yx1p5gr5gbTh+9AdckviY3J6cqxpEfGUqJiPQ4Oo0RXigRzrneepD8qL2Ve6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767252234; c=relaxed/simple;
	bh=TtLsIDoJifFPV+neEd7A34Uy0pHv+y+2OQc1D4T93qI=;
	h=To:Subject:From:Message-Id:Date; b=coWfEWJjEmWUmh9VuzoTPfUX2q9ZdZbqV8mQrYbaIPjtSyigz4OQknHJfBTui7aeiC28Pd5cGwRs1tMSgW9oS+Kc2gAI5Gmp1tihcIg5hSWXHYtky3/SiISJWQZ3kC1YGfEDYzep+iWmeMc6Wftyzzsc3v15F31wK4eEDx08iqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4ByuP4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4ByuP4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FDBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767252233;
	bh=TtLsIDoJifFPV+neEd7A34Uy0pHv+y+2OQc1D4T93qI=;
	h=To:Subject:From:Date:From;
	b=m4ByuP4MmZj9ymC/FHZ+hUeWxchC0jFaP27knDUItpOIg3aPAEUKsnIl2/rW4Pt0k
	 1064qUOP8izvT/gEcY0g7LQag1f/8uboBptUxRQJbuxCVgMn6tjfwqxFhGIjAtZRaj
	 SRcFCrv/qQtx1dFP1bgsbx9GF3AmJaMrYHdoFQXkyvR1bbuujqkrlx3KPpjsNd0ku5
	 U8ErqrHnG+gekC5n2TdHL0GZW6SDQDyALRe8d+QK0SjWgIn11a9ZHZOjVa6L9czJW8
	 UZIqgvmOY8T+la8U4TnCuJJjQlavj5CRE9ao2ORPNsRY0orIRBJ4dBSzegK0iGmYWV
	 ghfntLcqH9H5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97263EE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725223358.32486.16425593579599490476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3fa27493de6d08978f5ed5885b5fecf8578081bc5e9ba955c94f49bd118ee7
Date: Thu, 01 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767252233
