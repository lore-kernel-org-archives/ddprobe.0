Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7274D2CCBE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715406743; cv=none; b=f5iraz56vtQsTs4qf7TuSEpc7g4JF8+F5rfVSBHuDEQzdHVQU8P9W88prbb1+ot9jnrgyQuzW+o5Ff17LCjHmmt85zCKb6aN/8k2hYy4lNsQw7tnr9qd5BJpHFeE+MyOidFwM3dQDWdVf+CVrS3OG1KN4by1icclw82Iucno/Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715406743; c=relaxed/simple;
	bh=hzDjJeyUMV+W0s66jhte0/ofEXa1X3XQgb46yCWtbb0=;
	h=To:Subject:From:Message-Id:Date; b=G82Gy7C0EMBzwPLHi4okq1UDtOTVqhAaSXNvgiNuEfNyfyRQGZCzmnSFoEejEi/wdvkcOsR4uYF+rHJ1SBk7xTay2Gw8P8LdGKxfocKVNRjqN4gGfkmu7AXTNu1Qh5BevPCCDBwimw902sxEjBEDmrH9mtrumSXeegHGkYPop38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMv4vwkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMv4vwkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62EBC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715406742;
	bh=hzDjJeyUMV+W0s66jhte0/ofEXa1X3XQgb46yCWtbb0=;
	h=To:Subject:From:Date:From;
	b=tMv4vwkM17bpqasEINsHIizMQy361DPVwdKEohzqt60JdU6Id5Obg2q4XhU7VI1Q8
	 b7bTsBm+vr+Bc9+0Lhui24l//JBfWQ+05FmCRrqSWSsiN8Q39p+natubNCXr7cCzBC
	 gLTs6V8bTzSI8c86hq3nrPbwZH8m9GquuQvzr1a/DOR3xGX2WRUa8BFTldiyILNI1V
	 jhYDhpXrKVxVmszjrtZtdqp9YcA8/0i2wDyuMnIFucES4aNO9MOvvM98JwWYtntWaG
	 0HAcKhIm7U5JkRSck4cSOsJKSzxiYpOpe+2tSWpxZaMq7CDybDch9jjbc1GZX0zZoh
	 J6G+vpzrk5hOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9E7C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171540674276.17597.3332297573449157554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84eb30f1d8ba756e564bf7414f5db56bde487564869f2e68daa50adffb2d175d
Date: Sat, 11 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715406742
