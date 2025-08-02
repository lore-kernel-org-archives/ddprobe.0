Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208931AAA1B
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754117995; cv=none; b=V3GHqPpYg4qXkRuwFN2BRh8+0Fg8bnHcpB17a+NGAqtn0HDjahlMGyaY1xfq16uj4VPpo/trCNAYJiRh0B9o6aNB6ajmKiOKFKyIJR/5aYzJ9P2bxMpBTRkL8sdpPeGwTvkg6rORMrj4UlifAspay13df+AnDJ/knVSxCczs43M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754117995; c=relaxed/simple;
	bh=emuXALseWtj0kg5BwxRuDmNsiWv4z7R6KJXmELoQ5I0=;
	h=To:Subject:From:Message-Id:Date; b=NowAmjQzPKqXWj7hTsz2uyTMAGalH1YDx568jd7GL0Gy0eJu2sy/nVWVQoFfzNBaAoJ+87/XCCNK4fR6gWFsOY81v37jheGGU6zt81jh41Sys7nFaKr42ajhgz74gxy8Zus3uqBoX5W5ggkyWW2R7z7PU3JiZMTDu9D9TFle6MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnujPpbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnujPpbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C6C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754117993;
	bh=emuXALseWtj0kg5BwxRuDmNsiWv4z7R6KJXmELoQ5I0=;
	h=To:Subject:From:Date:From;
	b=cnujPpbOLYHhPAXIZdsUgnHApWg5YVWle3NHX9ASSehqGl/2MTsxSqP2oMcmMugMo
	 MOGnH66SB5IPy4f/oYrYNsBgJPcaD9+KC13MtpMYngpCCz7v5gM7QGl/mznxGcJBSr
	 G+RwLPInfKROPhYoaL3oZy5HXvaEkgzRTXbEoIQIS1JJugHmLPrzYHPhwpKARP8NXj
	 8X/rRc/k1A9cMxhSNt/kNaX12Rym34VFH9iJOxSulhFSC9qXVRlP+c2jg4GBdOmUQY
	 PC3PwHlRfVTWKOjv3pOb0Cu/KvABdQz9i2zs4NSz17OQZsDmx6oahIm73zL7EcV08e
	 vBGUbN69TIZMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BDEC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411799357.21334.21157745569427051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6da53b59137a5fbc9e06345b7bdfecb4c044e5c958ac661646ca436de9d36d
Date: Sat, 02 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754117993
