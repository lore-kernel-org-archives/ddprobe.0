Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AA426FDB6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753876794; cv=none; b=gsTP1xO+fDfJ2ZONO2uzJ5eVcU+09BfHhnWa5l7PjskWA6gccfv04vinTgyMXrayvc+aTxlCVtidzSDBqkDEFh/duALWcLTgyhAr+W8v3spsrfAtaBMJjki8X8HGoD9DryTfy/QA3RfGrq1oq2PnkzkPJLcYzYWPsGLaEfQ+Ens=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753876794; c=relaxed/simple;
	bh=ojLdl/MP3Y8mw+Z3cgsoFDdFKZI0/hJ3FiKRp9NWf7w=;
	h=To:Subject:From:Message-Id:Date; b=fh+c6Zi7rCi5JYYmjX/AxF3UtN11iU0bo0g7+lp6l2DN8ZNqtQKATNife4RY4WHyIIbeA900f5bdsmfRE7OO7jOJ5c5JgG4m4Uh9gDk2T0RlFea7EnCy453zU0KKELjeX2jc/4xUZjhwfd0L+GMhBiRYaVlu70rb+G7vmKVWsYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSBxmFY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSBxmFY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E95DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753876793;
	bh=ojLdl/MP3Y8mw+Z3cgsoFDdFKZI0/hJ3FiKRp9NWf7w=;
	h=To:Subject:From:Date:From;
	b=gSBxmFY/3ZZWz42lSI0p6NXZUl7gDE49BD9BwZkMjORaf7Wyf8zxfrdphStLRnXzQ
	 qclfWquNuucvg+85k37aWPZ1bNDvHfbp5HybgV1BFO2N38w/tLPVqJxbfwSkBiNeXU
	 +EhMaeQhSHfJWZnpObeMHEDFk4yWhFIOXkrASCllc6YvyYu+LXmc5C1vm+6bibx9ed
	 0ajEaGA38uOF1tnS8tFwdcHFdBR8K9oYSy1Thlh9wmfE37oV4TwoU+Zb4AbodU6HUS
	 iDvgTkOHb425XiLlQTbw3HnDGqZq+i/5U+TNGwt/AsPNH6qPHIux/LRmSsVBVw+Ef2
	 jDvTYoFc2xgFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E82FC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387679357.10935.7917407474463077709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b210c95d728cd3a0053995fe9996fc3611cd20a72045b0b5871e7ef224596a8
Date: Wed, 30 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753876793
