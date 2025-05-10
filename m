Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAEC10F1
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746918594; cv=none; b=jQfWk9Y1UuhjD0dKQrC6SsWdNTMDNsCWJYJPVIHgc6Q76GCPvZ+GEc4tKMpuJRwi2kGhCm56rHhnNK6OA1/kIRCHLM1xmOwYmCL57XR2cw07yBYaTuMjtHE2efHKR+DjYOBtNBk6tCrYWlypvHG1TTiyYou9ipztxgWVZj7O8pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746918594; c=relaxed/simple;
	bh=sltwUXzciwvODqHClJO6BpVX9o83VtUrsEKRh8EpIdo=;
	h=To:Subject:From:Message-Id:Date; b=aXPDuG7vPcMN/aBWWCiTGMlNLrHAwIWNlcNqKT9F4GddOTxXNtnGrRcl/Mf5MatHTkCG1PHYVAX/uP/wi5YLPDsaRoRjhEmno7zLDozxASCnJu0nHoyN6fdSPL/LJ71FaprdejSu19TKaL1j59mdD4y4+7HH+UKGO2Xn56YvVp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uh5Upk6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uh5Upk6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB32AC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746918593;
	bh=sltwUXzciwvODqHClJO6BpVX9o83VtUrsEKRh8EpIdo=;
	h=To:Subject:From:Date:From;
	b=Uh5Upk6x4m2pzkqasTL6drA8z1qmWhMJNA0SXuP4bo6eKqBmqB51+gujI4xZiurQq
	 a4ZTK6v1FMmUEn26u09/itP0w+G+RSX/UY0L0XErifotozf05qGQ3oCzANsu7ULKRY
	 fANg+yHkc5/DlF/5/3zwl9Un9KDL3f9sYaCankeXH56FandEVE3OYUnZrRCTwqLIt8
	 tikPqAdxAH4MI1yRM1aoV5oq5VMr3gEGMNT7rPl+aCmTYMynpI40cZgUVdX/fa3F0U
	 GW2Mw/efd7rWiecdwSzMoTXJ0JZgJz3Rv+bOgCElM6XbDwzK9v2QTxUVH77Z8+1LJe
	 JwpZDPnISXGWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99358C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691859360.4453.1991215208093615899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef39095fc8d38aa226f0bcbd49bfd7edd81f6d2093e9635331d7e546fbd8cfa2
Date: Sat, 10 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746918593
