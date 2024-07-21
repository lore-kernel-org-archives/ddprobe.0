Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7076E17BA2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721604354; cv=none; b=iU85pENXEL3wsIG/cTpexkAr0Kdaf9FeR+llA6OJJKbO8nXy94PL0SBjvMfo277GlZXrr0ZRtz9r6U9xcPl6ikBGdmqh/I0aLZxF8VJacpsC2QOjtM/FkX6gKQMKyYxyP0EL/1TBOeXju9eGNTCNE6k3E2fRr47iS0Ax7FWH3l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721604354; c=relaxed/simple;
	bh=p++Kq+Yak0Hw8XnAjkmELQYEfcu4aZtJnte3uHXJM6g=;
	h=To:Subject:From:Message-Id:Date; b=Rl2COGqR+k28ziIhr1aA2m8DR1NY2EmztpoEQP1cMg4unTk3ea7pbyRAuYrDN8fhPRwdp0F5xdoqiLYwOElQzotP9y6UTLCxqe0fn9Af5eSAlbDuJgH1Xf9gP06cJ9x2brlCfQYcpJHwhNg0ZpFa538hB2PXg5bqZtGm3fCLdG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tcx5aE9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tcx5aE9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA1EC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721604353;
	bh=p++Kq+Yak0Hw8XnAjkmELQYEfcu4aZtJnte3uHXJM6g=;
	h=To:Subject:From:Date:From;
	b=Tcx5aE9JnG7KoI9SaNjKK9q7DR4rcYYHJtyiTiFWQ6Zpijln2JSv69EQvEyNWqJgZ
	 vE7XPT9OQEWbzVXehqfGTOPmNb7HYk0bZ5lcrEtqL8WCsa46k9C9o3r0rKPxn+uiTq
	 pJh4CbdwprQ1ReODLWfPJqCbbH4KVkscJIEfmgpgCUbtpT0yJR/UxMHgNA+nhvlF9z
	 eSgqMuD1Xg4CUIFT9j3IQHgLO4/G5hUT69HNraP5F1Ffkoj+m2jkX767ZmbyVGZfkj
	 +NGRk4oe6UZpi/KY0TKpWYF/wrOD9xoNaldu4hdqOrUq6JF94J0G2p9wN1JlvVJLdC
	 8unoqGwBz4hgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97087C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172160435359.29033.13725459266558493835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a980982c7146b6ebd62435fb738648e562d29e9307088a9d0e891abdf657935d
Date: Sun, 21 Jul 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721604353
