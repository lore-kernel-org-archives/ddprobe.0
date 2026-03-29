Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CF2288B1
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774817094; cv=none; b=Oi5bfwoYX0YBZc9ByE/OTnPIyB8V9eLbXsA7cmV9P3HoaWRKzVMpC9qDFFcBCPQ4rHcz8xq4SxM014IYgsWof+vn6D3/OqN6+/iPfklHIP8ikFteluGJOpca1mcHB1DlDNp0P4hrZ8VkOgP6N7aGZlAot1JTN3TuMNrj49X/mMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774817094; c=relaxed/simple;
	bh=DRGb13Kxl3wlVUedPRbLgX9Af9yyS5seTBNMpbJvdb0=;
	h=To:Subject:From:Message-Id:Date; b=AtZ08bfV+2Cz/7srDFUKZHZnldgx0E7DHFYvktxK+xz8QxihbV+TfHEt1NIh89auVfR7SEA4euS4+BpHl3+9MQUkNlgwSCO/tr9gM9pxp3V1zithUy8a/Ax5AyUH9SbOkch8472tuEeYF7y9p6Iirgbky/n0eJfq9vIfcZVtovU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=putL7q7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="putL7q7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DA5C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774817093;
	bh=DRGb13Kxl3wlVUedPRbLgX9Af9yyS5seTBNMpbJvdb0=;
	h=To:Subject:From:Date:From;
	b=putL7q7gpV2p0Gu2J+ibikbgPbsVzQGMnIfmYmlbWkk79JfWXhyeUcwaA6byPSHZC
	 szTLuTETamJfu5CdnP370qxMaIixMtruf3oPE7FozDNK4SBH80fIUbH1IGyrRMj7T2
	 2THq0mYKT2EwJ5GXWvUdQoiL7wnlTRRVyixhiw8mVFk5ippq/FVtZPyILjHz+6+Hlw
	 OiOwnAzN8IXDejikVODUwLimdTdpsbILcZHw/X37fHoahm6E+0vShtEqIGhqH4Laqe
	 qtywjxtNBIdJDa/xjAFbm3edS94wWAA9LVTJ44m9NbVIt01qMwRGtGTky5fnM4d+nf
	 ML+XYIwaBiJfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B7FFC97EE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481709358.5098.9594063210192152057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0caf4f810022c36a82b2c8ac2b54b5ff16b84c6dd109dac4227b9d77c2842a3b
Date: Sun, 29 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774817093
