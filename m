Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B54148850
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749396594; cv=none; b=icBBqWKHhg0kZK2kV9o+d6LYQGf+HGH63yQCuGoPV55Js43SFR6tS7E07OLBssIeaGSr/URPxkgEEhq1L5V1f8IragyxAUdZQtXfse9YykIr0NxHVbuKL15iZsDe99q0R9g8ryajFwdum6PkYBKFzZpy5OcMk1lBbayYdfICqWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749396594; c=relaxed/simple;
	bh=tpZnYvQVsn2Dny+ACsjuFMu5DZwZfSS2AL6/RTYBPzA=;
	h=To:Subject:From:Message-Id:Date; b=dHjK0iHX9fwU2NhRVp1otVEcfETb9VVL9HFgsrpn80nwYOU5yoz/9nU8+YWlwVotauGmcIMHqP2e667dBZ94HVAIGyaKMN+AkJ7i8qolD4T2xvoBCdHcbcGqpxPZAp5c7/Kt16yFhGlNZAg7902kFUar/wZJrzphA74eJS+et8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDXzSn8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDXzSn8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C1EC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749396593;
	bh=tpZnYvQVsn2Dny+ACsjuFMu5DZwZfSS2AL6/RTYBPzA=;
	h=To:Subject:From:Date:From;
	b=rDXzSn8olJm1jlWkeW8vJjo2o162+X8B6+igW4gr3DLyv8sIyX2RnPQps6pqrFykh
	 2p1UBz3Vj8C+e9Cm2gqFMIHiEZPbQI0Kx3UQZ1bT6msW3QEwEQxfPFOr/qsb59hvSo
	 7Pa2PmHyK5BEpPt7NZ+7FtLiMaW0qnz4wfowS8KI5EYY49rEQNWXXKeUs5jlYpWM9a
	 1oac81sLLzu0oNKrsNraYV3A41mDh69ARZchRyTtPLV7pQ8QZ6NyFCfZQ4A6SBDdWK
	 xrQVM62FF8MQDFC8kOXcmV18akJLG3Ejt2mIMgSLYqrDWFBaSuP2EtO+/ArApeVieB
	 VUB6+MOX1gC8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9184EC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939659357.14121.1698405464612264189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ecbf8182cf8ecfec09fd285148f91a76e318371eb6505486ebbdef067fc74a
Date: Sun, 08 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749396593
