Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C531B25760
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748905193; cv=none; b=fGX9hvq0Mw/5s69D5hp8oB0gCU0827nFtP/qg1T3PPpCgbCXroVUq2fXfCG10KI4JqPIJ2znkK0QZzsxm+pXSzZlrd80DhrtfSN5JawmMFbs4bGGsSkzG6NsdAdnoTTz0VasObCcfG9RctAvfI4xS4/P35/c10j8Ln3xgCQYnnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748905193; c=relaxed/simple;
	bh=2fAu+0xhY2l4SZG7mk+FgOETXkAIvmYaBbyOloIJhHs=;
	h=To:Subject:From:Message-Id:Date; b=c0AnzPO8SSZwJ7fHBEBL16UPq2YVPzPh07hpUa5Wp0xgN9N6uCxZ4ezDBpy/rF2kqj7UHSFRG2JlOP+Gv40bOQUbeJPM7dalUFuMOy+t6kPyG7+nfRmwpaa0Ppe8Nxqsy8Reppqk6CPrtA2nKdlAQhGT8wvEjza6Vavba7dafAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laE9FgVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laE9FgVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A248EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748905193;
	bh=2fAu+0xhY2l4SZG7mk+FgOETXkAIvmYaBbyOloIJhHs=;
	h=To:Subject:From:Date:From;
	b=laE9FgVhQdchPrLQa2Q3J2sVxO6nS+vboNJhCA06K0+CcpkmHnaqvc+mj5UeDXnHf
	 JNVWNXfPmVnOv4UJpBIyxlvjPG30KWETQK7neSp1SD/LTHq7fdoNh6t8fW41ViqIz9
	 zs9IZvhxfkukO0/vrT+eUBmXcRhO8pZdpeUf6D/sRZn582n+jokfTQ7gbCAa+TtrRV
	 iudP4tMdTfp0TyNPtNjV/SKW5dD2LsHUhI1kFWNFkCdopRAMPknUn9PbjMNvkZQlGC
	 zhcI1K6fF/5QKa9kGbI7jpj0o3qtJLXAmMJ4A8WaV+ZZeWThL9TXEas6iT1Gfg7d3o
	 jn1j0WQ6M31wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA5C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890519358.6897.3808675347249617573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59460d72d67c4ea0db9e89e79ef7f320549a5b41e7e6acb2c1098b216021155
Date: Mon, 02 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748905193
