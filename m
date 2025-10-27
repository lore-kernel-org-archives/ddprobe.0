Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DB6216605
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761541794; cv=none; b=KpRQLZr+zVn1PMghADK+4chc2Jx+N3Gu21VvqfJ7DxpAdE/py4LsHNkinvxv+nCj8QmGt/oa5PxYocWh05HGe/iMMTFSIMJgzKxABzKs1TA/AXgRAmE5PvfbabZB7+gGA1ZIwBC/uXrjl8h0FkIKd8Ql/27dRvrXADHcFjyyZG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761541794; c=relaxed/simple;
	bh=eIuUA0Qpv1QHVQhMQ4hr5dbPt7en9NQoEmeOLLe8Vh0=;
	h=To:Subject:From:Message-Id:Date; b=rZMkqZqZh4Dbh9OayRefMyLmnL9qSZ84j0k8dvenJQr6TmL3ljmGUKFyc5VfHymqll2l9rGCyYcjEjGRn7lNUsEeqb1iRDsXcbltJeCBZlc+SL3nxuqnZrDvJvXpYJ23fHgVBfLYImhJuAu0m1ySZulZKwGgv5hrd8jRhnWcIKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzFGCRxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzFGCRxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A821AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761541793;
	bh=eIuUA0Qpv1QHVQhMQ4hr5dbPt7en9NQoEmeOLLe8Vh0=;
	h=To:Subject:From:Date:From;
	b=nzFGCRxtI5kDFUPke9xUifV+Nii+R08O2XonqCYJp7Pt6HwW8DAF2L+KPkOdNFN4D
	 TwusHCM6cMxXSIbgSJRiBlfqh6LgZEuoXQrPdusOu4r7LG9qQCUuYEYjj3V67ZDPa3
	 R/IdWDiyhs1h75piOQlmoFNvvThTW7fV10lwW/H2kU7B/v75kt60QyB7r7TE9nFKTm
	 2yRKsU1rvU4XbS+HE+Sk+codyL/TnxWG7gjtfNbov/2sehZ6vE2Pg1CPnPiSN3hGRM
	 TbfoETQTUISwr8fpw7lxRjqvgGi1zrS4K/VPhVGlL7Dn7uvR+TBXnGd3Ze4TEg7aOF
	 /CjyQix5HMTig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95189CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154179357.2534.12007894654994178553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ff1522074af6dcbe0dd96d422753fcd23570253e24568e744b34e7cdbce287
Date: Mon, 27 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761541793
