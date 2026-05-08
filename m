Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A48413DDA4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778232454; cv=none; b=l1YzuxQELcgDWow9iw8+Y+s2d34AGBJLmk291mYHo8OTN5MQUWFsiBAz7apvUpXoqZu2eTci5n1i2L4NR+B8DzCKWKm2Ii6gGLfqMFokuZPnV4bYh9P2scebv9po6aKiTS+/hr1iEP8XSf8Kh1lc1aE4SjyTAqoeLWp7cN/mkh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778232454; c=relaxed/simple;
	bh=/HBO2tBR2f+SEIABdm46PQNZGY58nZ9Nl7Bx3oyQw7c=;
	h=To:Subject:From:Message-Id:Date; b=n6laqPWm+UI7dHfwG7lZ3z76A+j/laa+1VC8L7uUDcYzuf2Ip+CMTjP9d9VmhuFRtVJ5pQLYFZGFwEwwVuf1qQec9Z7RpqxCRFKzxKHE5iVjzZ8GM9NPrXEoMGTeujJepRinDmrA9VxDOpHFUKR8UwT1vQDGU2BjztDlBeHsuEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDbgySfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDbgySfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCBBC2BCF6
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778232453;
	bh=/HBO2tBR2f+SEIABdm46PQNZGY58nZ9Nl7Bx3oyQw7c=;
	h=To:Subject:From:Date:From;
	b=gDbgySfTR2cuOsuzb/yh3P0vP72SjhcIODSR+WqtqlASkxCZbG7dQl+vwrm65HGQ4
	 yN1pJP87LEQgpUV9+Ma3Dh1AWLz/PGbtM3Y43yWkabmGRO9A1KBfvkes5fD61NE9rH
	 PNuasK6yyPQc21GJVdVL/kyheY+UnGuqrinR0b3DsIOEx83L4PBeL2iyBAVteRDSVL
	 BkmJNigBNRfWCD1PvHRjBkDPvw20ULZd/0LtHtibX7rroAqBitp9hC1BeLfj0tVDLk
	 bZR54Ln1K4YDMZ6wVD7mdazR799mLPuzA9gav+lOmd1KzUlWG7duBjIbDxgPdDKG2j
	 FNStUTLqXSM/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB115CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823245369.17953.9237219124639888330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589fd7b31ea093ffd6ff05d86e656abdf58e933ece02d575ad9b38b6fdcd55f1
Date: Fri, 08 May 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778232453
