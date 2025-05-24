Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2E92DCBFF
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748054994; cv=none; b=p5oVrnvO2pfepkTbSjuz3d7chvVug+4ZPZXCDNHEbF9TJ4IMTHQQID/uLEhzx5u1qU2+nX/vk5h3dCc9fD6+5Dyfeu/rZ0g3HBlsUrpeEO85Lsm7slbB1p+oA4CSbuHELKHymZHXz9tEuP2wYEYr5zsrMWEPT/eWQVxZKietZ7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748054994; c=relaxed/simple;
	bh=E9k9OBX5xp1F/15ju0gttfGrefxetYy2AZbra08T92o=;
	h=To:Subject:From:Message-Id:Date; b=qh3E2uPB1VMH7mEfRldiJhQOoiV0rh4KeFBo4naIYpDBTQ09V9SWCS4J6qohzB/JlhKVT5UQ+jUIhXkGypkP5Weh/xkqIyoGq/es99Zn1unJd0y7oSg0scxPG8M2AGPvMAVkIwE+Wou6LncscBA9LAXFoSvC0TGAmQMCis/aH4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlsabkZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlsabkZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECBAC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748054993;
	bh=E9k9OBX5xp1F/15ju0gttfGrefxetYy2AZbra08T92o=;
	h=To:Subject:From:Date:From;
	b=MlsabkZHW0JtCPCMXOJ+GhnSOLj94ZdNrQbOb92yKw6vx3OX159/nTQCMhWEHl24E
	 zlv6+C5CPkMozJnrettLvhUOqVVOYpF8WViGYut+m73shYg/eKAwescKq844+7xgKs
	 G/gIW/2Rx6V23S4m8y3athkpGzELYs3wgkR9g5/Z7SEGFeUp1xt5KU8HyXrRVTkheD
	 Wif/VNdh2IbQqsP3cD9bNl51x4zr/7t/Lnl0hoy7cgtYQ+V+TZexZgEoMf5GwOA0fn
	 sxAZzRgUdPhq6tEhkzUL9qEsRbzeQAJdpygv2hwPqzLzLa+0EzJw7Cu+YynD+KInBz
	 dXVM3i44BNGBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D426C54ED0
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805499357.28025.17178741181157882554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff3ae6850a70bb30f8de27a5a9908fca0844940435b6fc35bf87ec359789f8c
Date: Sat, 24 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748054993
