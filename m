Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3591E1EA7FF
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746071994; cv=none; b=qTCRlxT5QWzibsPLGcOzJk8BVLtr74iLvFuLkQ3xoQ4Ze/qBj8/raSrPf3uFBT3R/MOxr9ojNLXuvBaWlf/lbeCJQFOr3j/iUBJOwMxTU7ikRcIfn98btDYnlGmDuG5N1Tf4wCStnei/TgMHOt2MLgbOBw7+kU4TWMM6LO/UCYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746071994; c=relaxed/simple;
	bh=7/u3nU2K4eCX0f3yyhkPbWvubTwD9Bdye1UpXaGKSZE=;
	h=To:Subject:From:Message-Id:Date; b=Mtu3ZYoz3nvLd9Ma88TKfXNYKq74rfUgxSfYFQWpJpJD90vI5scZyCLj/ClIgDVuNz3emJTxAP6pNSByQiAw4589PlkkRNFkejORBNTFRplB49CJTmA1T3uAFzwrDXBwQB77MDlvP2qH7wFnOfRyQ+AqkdyL3s+2Zer3Jzcrjgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtymMJBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtymMJBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F6AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746071993;
	bh=7/u3nU2K4eCX0f3yyhkPbWvubTwD9Bdye1UpXaGKSZE=;
	h=To:Subject:From:Date:From;
	b=HtymMJBdJn6E1J1O0xyjVb0IJX2JMOlSeBOG8DEi7q0i1ceodZm/athkl3rVHOAUX
	 LPNCsR+ewLzLmrsV1Qy7psPiDQy91YAwgZSd2p8g0AhVvot8BiOmvl29rsO4L6dKYC
	 iEW1CZNTpWCqQhicP1lbHK4dCptOWImpDCCLS0+/kM7n3ElQY/lZDOvtaqx8QimRl+
	 1OIguRul/+8y0MCjCoqIMEPxOlPoed8bnleK57YWhnNr3UpY7mCGzN4ydpMicdKYG6
	 bhYkwulXFyI3xo7jQvsC8/G+uSxMkgJ83edt9F7eYywGdXcedsjcRkvdSz+Yw1owE1
	 vAW6vbM42yVzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B9AC3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607199357.381.16783191024812165682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7aff1eeea6137351bbbb93778257ab0bb956e0a057ac877dc7f3f327a387a6e
Date: Thu, 01 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746071993
