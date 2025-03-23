Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C3B53AC
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742744394; cv=none; b=UMD439SgnexSo8Lr5WSVLewIxXaZJCzTDYR2I9RrgRVNlMWwcZs8MOsQ1LHvjL7mWWrY9aTZ4qHtmxl8Jhc4HXPIFAfLGBBDk4/v7INaLkNqDkrJ0TKDsovm4dnzHuudJz4yEmQwOBd7VX/A/usfymFuThGmORVLNQLipY2UPMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742744394; c=relaxed/simple;
	bh=OjCW+uXRkNTYHOmNUqaibXpuDCgX82tLuyHdQIFqtR8=;
	h=To:Subject:From:Message-Id:Date; b=iXfh/QD1CFQ1LfG/8qJN1oHfEzBOj6jUEc1iRXWWboVkSTowT39gL3SjLChQgewoiGQpo3HvU1edNFn6Y3DQhbJVtI7YKPKjO9K4VdeFKjfDub693qVNME8TwsV64GWxW4LvyKXoneoEL2a9e1f5sjE/K5w/dwCkZDget+EzUh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iI3zLvOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iI3zLvOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4893C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742744393;
	bh=OjCW+uXRkNTYHOmNUqaibXpuDCgX82tLuyHdQIFqtR8=;
	h=To:Subject:From:Date:From;
	b=iI3zLvOQjn4B0mNSc+1AajLXEKEqC1DsPz8emY9/HvysUxUXh8/pWdNl8PQPfwuis
	 yNA9t7nYbCq1FRWG6FXUHLqI9/3+DAeTO3dXp/jAS6MKmKPeB2sZ8K8zTmEUdagHC5
	 1jBBxMra9Z7hiNNCG6ZeZZHaBMzdistVZJ/fLSvtlc+tU6zmOCz0K6RFsuomOCkkCa
	 u80j6ODE3tzOtOCe0IHdd2M/wtxm47T/g1hWN/u5/IdSRx4E0h7HGmMrxnYna84wGK
	 ahgTQ9ZOYIcIbM4AuPWRPMg3UTyQir07BZVeluk0KQe/ymsMGuxuOTnytOgQYbtjcL
	 eTWUqmf+zW16g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6EFC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274439359.12563.6148809348858812765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2980740ca43b2faee3f2a5f3f0bee6765a836d327fb04a7949435b8d26ac55
Date: Sun, 23 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742744393
