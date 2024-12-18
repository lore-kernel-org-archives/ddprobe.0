Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBF51591EA
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734546954; cv=none; b=KQ1hZqlMWaw+1f4m7F2P+gRbMvObkF8m7xtTU0HD6QbCPGSfaYTYH2iDnlzlFNcvRMc0JOhfK8UT2SXVvjxEtGxNDfoQozX4U+wRC47OaGUKEbpoffILHXPUQytcaBUr/nEU69ZrUp89GwcHcknqw6ZCp6WU1p8NT4lg82LCG4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734546954; c=relaxed/simple;
	bh=eaEP3mEYGxjQPBL0w0Z7Iav3/OoEcdl2aDIaEbhVg84=;
	h=To:Subject:From:Message-Id:Date; b=EE4wBmfyg2Gwip+xdjCIGneV9O5KBORugvjh1TzOFL1SrhKtl/azrCZsVuoq0v0WgEczfxNfqFThATqBtUb/X2lugWoE4Tx+8y12jnEKOYNUOr9i1iP9Zrfwta7bS5hJiYlDI5AvlBNIctQ7MEFSCAfyQDr9aIfATjEMjJKk80Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWJ2RkLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWJ2RkLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B81C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734546953;
	bh=eaEP3mEYGxjQPBL0w0Z7Iav3/OoEcdl2aDIaEbhVg84=;
	h=To:Subject:From:Date:From;
	b=fWJ2RkLJ/0HbjPndQdAUZJE1AdejOgB+i1ZYVjI4oyQ0CbBZy19ai+IXZgq9Sli6Z
	 EmMls+wwosnq7XUh9Y2TiWfJo5AQ+vBd5F9qpmeVpazepn2gz4K/M2V045rzZy7xyq
	 E0o/ZU7BlICQyjkaZ3o1KbyPX4VMaNfgypfAPfhXQmOlUIkXHm92F40tMFeUajV59r
	 rauEJhgeD/eUTHa+2KPWdZ7DX05GOoyGVkExtjgQMVKxiLLVoViYMqtWtUgHpOC9Qy
	 Soth60A4tR4j2HqwK+CSLwPOufpaOyCUPvI3Z9H5GYc8Z7lPuZTUbKMBNwA6Bg9Vfg
	 /pvp6Rk71cUWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AECE77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173454695359.2307.14724743098833619803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4023b6bb47796438203f57fcef01855caf142ad2455bc53da660da3951c81b1
Date: Wed, 18 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734546953
