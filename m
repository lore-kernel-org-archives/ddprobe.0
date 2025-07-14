Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD11233701
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752478193; cv=none; b=taxXWoF8k/TbZz1sG8ryqfJh0mCe9uCQa9SzrH2ixr1WBboQFfQTzWMzQWTl0daXqmsyzG6N9zolf5hwo5BIEEO9glAcgoRyNG/8gfaB6TLTUdlcPb5V2Gk+m1w8krKyVDpvfvqrEXUVcFplJfaMRmL+Pw/DIVE9gGyJ1NXDoPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752478193; c=relaxed/simple;
	bh=xptn/As8bNfDuH9sTAfi7IedHvoUpj5i23l0msWZPPk=;
	h=To:Subject:From:Message-Id:Date; b=a8AEeuM0Zfw1tCPV+GTzMnVNXJ9+UaLYU0/UXdCkAH7Pjvor3iydW7yMWO9mWaYhQREH4i44xWLHR623mgsB9xLkmjwuRwcw/GAwh6y1NjHDkl2pHTb7osSmuX1te8pSqRtctZ+Pjtx2srX6DASp8eYPpF8+TyO3E30MFSMtxwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfwRtll0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfwRtll0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C04C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752478193;
	bh=xptn/As8bNfDuH9sTAfi7IedHvoUpj5i23l0msWZPPk=;
	h=To:Subject:From:Date:From;
	b=NfwRtll0lco0wQD0iBi9RdUxZ3Pqjxrh2aMtUBsh8eqAQYTULOFKB3J/LhNYvYQDA
	 cNN3jWX4Ce6w3yf7OLYeWDCxYKV67jOQY0NZYxUgIzoJ2rANnk6ExBIsXWSx9M3n1U
	 2yrMfINYHaYp2Fx46uC1siDDM6F21XU/wN4u7lnFT8SYyyVsPFrICdhWplf+m3PRAq
	 CWqp1tBTtsdC9lYoqBmID3SGAXf5YjE+/CbNMcPxHjwT3qEM+l4wUZ1n2nSI4y+QGY
	 F7PnZXWWtyS/n8xJfFuwQyqdde7/yM3HbWC6i+Hm1igINA6NeFyYQN/EtytqQ/NNpA
	 CRTkv92W2pwHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933D2C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247819359.12886.9951427085570945440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc063f03eb157ad30c0028ab725043e30a02da3ec16acbb6b89aa157d51a1a6
Date: Mon, 14 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752478193
