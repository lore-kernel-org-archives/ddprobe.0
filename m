Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FFD4B5AE
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746330595; cv=none; b=py9lT5kFNl7MdUp/7YksKuY2oBOmVA02gWgLw6qpqMpXn4guoIxcUIz716xTKG/brB6nELvAcASBz5T1d9mKZ818QVV3ZAXTwEgA6ahqsO0/ErBgvWs6Zf7h693I7TmjMdk/DH1JHQ1owRsEX8yfsWocXLkBH9VkKqVQ1QtKXWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746330595; c=relaxed/simple;
	bh=ALPZuNPl84dVvDcDP0DGU64qkcLGREqOM3eY0xQXjtg=;
	h=To:Subject:From:Message-Id:Date; b=nSGM7JjO3v4nQHL7g4p9fXOwQPCTgv0scQO6gG8bFa8jKUOSfdzEEX5fzk05QjyJ8WeS/jIPJktCH+gYtQd21eeP8P6QH6bQ7Qo+1VjeSLceaMA4P/sP9hBKCcirn+hfTm+X0G4BmTwv6CgTlLzhfRNTnAfOuFCUOH9lXk5DDCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+Is/whU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+Is/whU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C26C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746330593;
	bh=ALPZuNPl84dVvDcDP0DGU64qkcLGREqOM3eY0xQXjtg=;
	h=To:Subject:From:Date:From;
	b=r+Is/whUZX73cRBANAU1vvI87GHiT5hOl0Tr2HJas5yGir8xDReqjHWo+lLiizZgK
	 ldqi20WNhXZQqXm38A8PEIf7nbdJ/m9KXsYGUQUDJgJSdMB97xNAiMnyj4DuaufaEH
	 Dh1Ps/mb+fskdO1w+qb5P9bOTo4VeDLQemadj8RUYhj94tOGmV9uy4pC5H55oGk3KH
	 SRXvfhIV9ICjHY/Itc0giXdf5A1oRGO/QGhqC16Eco8PjkxAle0F4YZKoDOFzQjEnL
	 n7NC9BaWhoOmSw4fyFzNv+9K8VyPtld74Ch9zNMTyX42xg6tP8VmFTKFpVK1Nq8wew
	 MeeExetVRFlmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F27C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633059357.6703.13107898465847482148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6827ce771b295a850f8c88412c5a133eca387db136f21b033c6e4ec691076dec
Date: Sun, 04 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746330593
