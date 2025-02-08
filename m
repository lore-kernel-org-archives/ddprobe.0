Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F89A4437A
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738995954; cv=none; b=G20bOKr8oP97N05AU2OBIQ3eWigvf2JauFm2uKEa1JXBul3bVwIe/5HPpv+eUoAgKFXqAUJ5BGgx/D7i78YU/jecFoiH3fl0Vxia6UUw9QfYuqpU74dClmctDjZZX2pvL05A0nofTDRHy1F0m1aJpNUmb+k8He4LmtOgdIlAoyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738995954; c=relaxed/simple;
	bh=xYDwRA3yxYeL+38F8sIP3RGLT8XDx2KkzW643HR0f6o=;
	h=To:Subject:From:Message-Id:Date; b=MQgzE25KPYxt+l2vakIZIVrhxgdxpxBxro4z++5Ks8+5SRm+cgFHoLO8XbMKj1AqJ4576flWf5QYcdKFqFApl2tKrHtffU/6wzhObl1uh+6g/xlu7dMpyQ84yV1CRsT7EcZj7W0u/FSnT0AseLHfKbNKYiBWJ362JL7eipCq6Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDN6xj9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDN6xj9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A545BC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738995953;
	bh=xYDwRA3yxYeL+38F8sIP3RGLT8XDx2KkzW643HR0f6o=;
	h=To:Subject:From:Date:From;
	b=LDN6xj9pVje2NS37GMFhyvWeOv/B3Pxqr57GUA12Q994y33O6CDPcAwi7TxSE0mbm
	 QW/tXwosLqk8OHSt+pesYMS3F7P/n7IN2zyryG3mZbqCCuE7I30aSGBtFSl2RZqlnY
	 x1eDcAU/Sxut2392mbbEmUl/zrxernuE4zL4IIwwisEXcUO5+cZ+/Jx+7HBULDwRSp
	 ck7ZQNG6WLnuZl/y8lyy/ggeoTzQH9EoILYg3LhEXqnD0f0ph68otkJ9pCfDXPKRzK
	 VyWliZxn6gpgA5zyiOhKdwWFiHGqm8vYtQvCU7tkFoG40y3u6bsBVU8SWAQ4a/AZ/a
	 zDMrRSPV3w/Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9244AC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173899595359.9575.11015604535676146953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa8b8df38739beb298fd55baebc255bdf40de8ded3e3786a5281f21006320de7
Date: Sat, 08 Feb 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738995953
