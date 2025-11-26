Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFF0302755
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764167574; cv=none; b=mSwj/6RMLQGKOiyl3AjJavLlQLm1DMnnwBLwtRqJPYyRN/7BGa45ZFgYe3LTbqhs2uCvUEoFba0eNLQMQubu1xolvmdkfiN3iiJtuWeXXDx6pKnOO0E3WrClUkwCH4Gxh/3CoJ0g8xtWC9UH/NvsTJbpfibIchDgZ9O0jbvCB+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764167574; c=relaxed/simple;
	bh=ZLzv5REi56PvpXsS0nwGRkb9PVkGj06i2vb3BD5SsfI=;
	h=To:Subject:From:Message-Id:Date; b=OTuXQaGk8YPNUQXYsnpqb9foLFGHIRZd2fLwT0kXCtjh0k2FRy8bBBYR0Vm8fVhDijUKlQ1h8yDg7kOBViVdJxm0c8NDPNDu21/r/HwlyPaAK9jqegOGSzaXrH4SuAkMPV6mMnpf+oF9iG8Dy+NpFtPQV5C332IDFYF/BY7cCkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avEwRsi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avEwRsi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D651CC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764167573;
	bh=ZLzv5REi56PvpXsS0nwGRkb9PVkGj06i2vb3BD5SsfI=;
	h=To:Subject:From:Date:From;
	b=avEwRsi2zxdFLQiHMFcmKbksZsGgfTqmm7GpbXYedVgj5GGmZ06UTI/k7IAzSAJ8m
	 SPOX5WB7oXAgDT/3K3FXlB6jXvx7c3vTKLQqG+A9ZCad2byaBFFPrmajXFrKdOoRCa
	 zkd+v7EzuVIFich6BrSwMTNtW7jaigL27bUX178LkInXgmrWCqZ4oDZrlaau2Ee54J
	 Rm/2HzVR7n9FKXvR/tsnca7JZjn4HeE1XE0JhG6xpGyVMu62JcOxDRHrYKI/YDSr5K
	 xFhC5VC/f+vupzFwEVx8GSpQsBz5SmL4mXz4gOl5jFPbpccEMt3CMNom/5mAVrWzGr
	 3rJAdPzxf8JUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9584BD10F5A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416757359.21649.6989775133505706710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d22f232df201832110736dded2dbebea2eedff2361d105669825f228e8c1cb
Date: Wed, 26 Nov 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764167573
