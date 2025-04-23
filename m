Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290BA2144BB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745409594; cv=none; b=nt2ll5jPLewb0ijSgNsslSDExEFsPMCnZDa9oCP4eaiy3R1V7LgOlBYbBKz23U2WQh0b8L/sUgMkH0Zk7x8kFmpY+dAJUdZQqNHyGGnvM1GpNSUExOfs5D+d/kvOM0C8PvTalFGE71+fHcGzOa6ngCKff7qvmAT6X8R1P0zbfb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745409594; c=relaxed/simple;
	bh=NdYnyn8oKwlQXJqZuaEsUZwFMq9pyrY12elG5ysVKGM=;
	h=To:Subject:From:Message-Id:Date; b=rxEyIh0DomIpBk1V01XX5ueU4lnCzBQpXJ8HzfTKOAbVIKUAS17pTqe/S5oeMySD70UKxRUS+zW/JrNSc6D1mwMwIGnipxSvcHWx8fdhMtK0AMVHUuhbC7Uc30C3mUgQbXYFPLwEB5aXG2XfxEX7Hj/7NRqutu4itmGUAOO+IRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDd+/Vn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDd+/Vn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AB2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745409593;
	bh=NdYnyn8oKwlQXJqZuaEsUZwFMq9pyrY12elG5ysVKGM=;
	h=To:Subject:From:Date:From;
	b=EDd+/Vn1Rq4Jaa2JQVBhdEshx+PhNr1WC+TBRUPr+PJ/eQdYeSA9YibGz8EAppiZN
	 wAq/VUXMmfaW70N131Hs95uzvmVKatolKHx2LBY0EXroQeVrDM/Mi/yxxT7Xc0NvqI
	 5AArG73O9/EYBLCcXAkX4HIyR6X89qxuozG2POET6qAurBgrVcq8UxRcnpkTxWWjJ4
	 A609yMb0tYIim0i/oX6dHRU30UXJyre2AUlY7A+ugHaDeGRXg6/Gg5dt9XwkyXL6fP
	 A+z2bYZ8WAmqh6TYBN33MdlgyEZFrfX2U6jY5laE8vgHh9H7osZdQjFh2UVTqQUoTi
	 etCyknOcpS62A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC7C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540959358.26275.16871166939379728765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40fecb34ea2e9705481882a6296788c105afbd064da672264d51616b5b9259e
Date: Wed, 23 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745409593
