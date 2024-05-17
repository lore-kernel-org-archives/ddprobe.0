Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458B7B647
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 03:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715917943; cv=none; b=CHTJtjlongRwLyB8sGORGtfN1hYA9iuDMZTEOnZRu4oUt90JR/F+wMEz/aQf+yjQsxKktBb/qdwJT/ulabHEvzWVQ5ReqLZp9HuB7cuQ2GFvSzvVfMRq1Tyc8/3iIPRlEmtCwPU+8kzJ/CakuosXEakYEbQ/KUAsNg2/CPUcOng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715917943; c=relaxed/simple;
	bh=9Ymsap5IRDqLCDBSl7TP9aZ9FpET6sFRRp5ZGh9Lpa8=;
	h=To:Subject:From:Message-Id:Date; b=IWvL3IV7NRw2jBEANWe5gbVXyxn1pDODN5aF6Gf0+u3PpnCDhc++HViz3223l+X3RI/IFF4h12oBdo8csz5/rZ5E+35GYa9rNVXMZjXMDf8tzTwhvagLZspWqWMt/J+03ntHB076Fs0B07Inu0HGczvbtAahUPKg81mi4dRTtK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awfvVt/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awfvVt/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6502C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715917942;
	bh=9Ymsap5IRDqLCDBSl7TP9aZ9FpET6sFRRp5ZGh9Lpa8=;
	h=To:Subject:From:Date:From;
	b=awfvVt/5MkTUweyT4gUyRN6GvCCbSqwFzdwjF/K21pHozIa9ztrgJCZQSyoDwHLib
	 iiR5soxz/kaJtm0rGFL/fS38RUfvDsW74+gqIuV0tM1x16Pq4zqjbQ2ZJu31nU6aEN
	 uGXpi6CI7bH/vj+i2hjP7J8wga4okN/AgeeJYQ2xsgvdXOdr0YB647Ndmtsa0xXtKG
	 Uo9m1LGl7cf74gnw4umqUSI+K/WokTYuTSdTs1lNgY38mvR1dO9ydhuE+y9ix05yy/
	 rq649K8NReRBtIFrvTOmi8Kn0On/ClYu9NJpCPGZw0UyFSs0UaAZLyXF40lfsOzOz3
	 2o2AyvsUS8H4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39CAC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171591794276.17939.5397056708409536744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c6c598fb862eda32a080ae26d1119d6e806e51ed07b24bfb06bf4cb8f34557e
Date: Fri, 17 May 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715917942
