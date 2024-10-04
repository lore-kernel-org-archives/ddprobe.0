Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1281D8A1F
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728078954; cv=none; b=thriLVDDHxE+bEh6BXugsU2LQDmDE/IThFFUlfxFhXvpYQ6CqJzLoRFE9t8ISc5d60Rk5FOHxbdUUwzgSwA61M8pyGrtsv2ETeJJtU5C2iRAwDA4mdtPvzLcw0IVouO/6+myDRKTUkXLd93ilXvCeF1W/NmrkvvhLJWp4+vpIFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728078954; c=relaxed/simple;
	bh=B9r2yNLwxJfEd6Bvy0cf2VAPjPrNI32s9oysjDuAaFg=;
	h=To:Subject:From:Message-Id:Date; b=WL1k5+yd+VyekpfUpJ/uHYdnvYCT30RQ2jvejm1OBXA50jxxZ/UPFwKJuJSCFaKKqJ4inDI2Rwd4oa6aGmpcdX11KAMWOIbSESnQtS4L3Z4byKJJiwdTP8AkiZJrbhYlRINPLpXHJFzj3dw8QaATLKYCCt/5puXiABQpCms+a+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5I9leQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5I9leQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6E6C4CEE1
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728078953;
	bh=B9r2yNLwxJfEd6Bvy0cf2VAPjPrNI32s9oysjDuAaFg=;
	h=To:Subject:From:Date:From;
	b=X5I9leQiF+8FgENGxAZYGaXKYTArbI9JCbhQEeppFKdByijkyW3Epr+B7AHfHRozI
	 PnHy2w4m6s5TrxzlG+gjXK8mHILL3hxd8TrOqvtD6tONvy6UVUTOG9J2vTT7I4dpNy
	 /LmtuKC/HI08tvLvRGiDrXix6y33GgaL8vAdwAtlFz9LB9+Q5NRsnCoWWCof55NKGJ
	 NfVx1d3uNsNzv4F7APeCDWvzqUdPXX3Ao5cbhsNoT/Bi3sVUOQMkbXiQ6PrTR78J6c
	 PATUqgdhUdPazHkyn4Kt3o74qQ+ayE4BaQqIcpYw0LCru9PHZQTTtceTcxZY2c3sVI
	 xwRFHmh9LOBCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E78CF885B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807895361.6029.2545171925432481233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea0782625dbadc916052bffa93a308136386c86d2c3959ddd33df4a28740301
Date: Fri, 04 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728078953
