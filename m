Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088A42D6401
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945294; cv=none; b=uSiz0MCnZr+oE1Fd8fFELyTrujawnWgH/w61S4kLPjV/l1V2P5uOZ6t7AEXtrmU8gtHYwjCdZd7Jtcr78XX/qPwf2f3rXp23on6aAQfHzT2OPX3C0yymIi0UK/txZP4CoSYqev7IeLqG6gQM5TVXoJjqqiaberYmobSiKnlVLTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945294; c=relaxed/simple;
	bh=2zwmprY0wCfnOfvNYznp0s3F3xafrn8LNiNyfYiCd1o=;
	h=To:Subject:From:Message-Id:Date; b=o8gPMnOxnOuSz3Hwrry7ICuv4zvsJ1lSf1XevZnuKTc5N85lrIb84JHdsjwK5Faknce5sAPi3bWQXZcdqG9Oe1AIa1fL36V8BfMQ8rsEdgEsDSTJSVLaAGxmfzeFc78V8BF8LnDq5kPjgrZYQe1gfGHHMK29XG8rILsZgtfcx0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFNLIgUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFNLIgUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6D2C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773945293;
	bh=2zwmprY0wCfnOfvNYznp0s3F3xafrn8LNiNyfYiCd1o=;
	h=To:Subject:From:Date:From;
	b=lFNLIgUNFS5z0q31lSKrHNnrSwY4fesmo0p655mBnaKXsGrTZPBBk2Mk3Lqu4cq9k
	 wxzmMl9H2bgyNjpdrt+Lbcna1OLH1ZkiTY2jBjHRXAFVsy2brJ1SR5yIZh1rMTW//C
	 8S1sT7AaO3qU1QEGCJYgb/K+KGtqJ5flZkbTx0FMFdskT+GCqVEADRaPkLD3lCgHga
	 eCQ82iH8lZdxYNz7A/23VzR3vZeXbCilUTaZiE24inr3iE4IdgTsd4PJ3C8kB/lB5q
	 hZY8DYdCsSxMTAHQumu0F/UpRs/10fpdvh9cADGjmLw700SzbPv+OXyyq9saESmK25
	 ZtOvYdaJRGgqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DF109190D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394529357.1489.9354074845810700302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b65a586ef0439dfb3465e3a7264371d1f553c3a15a21a5e08f95c9b751518a7
Date: Thu, 19 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773945293
