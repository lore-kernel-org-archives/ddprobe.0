Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B01C1F8691
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749530394; cv=none; b=phlXp/x2Kpg5g3Hu8YMj2U3LnUk8/IOtMNKHm+n/Y9XBU5/bfxanHsx41STA8X+K7V4os+Zj7bl/Qoz0hsY/peXJlKNFyyeKAdFEvoGnqns8odtGRDtGyoV752aiStpM9EqD1q0232zhoDs4/k4ME9HwASHuGlvhlyjceKm9YTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749530394; c=relaxed/simple;
	bh=njowRGH+fYHm50z4B2GvrPTc6y+oJxqb5ldPQQxDDvI=;
	h=To:Subject:From:Message-Id:Date; b=UGKC1za4+calRS4fJlSVA1nlwrkMG7qQLliw7++r8q8Da68cJ0B2RT0x3h6Eu641oPUc+mB5FpkDEuo3mZvQ0Xwt+p7NlrDK8J2ZFlGQTuJB/9GoATbJlgTOO7ptJ6Y2MJdD+cfIxFvJZJTf0BaDsC1slsLxmzPrNm8R7c5VBGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGNj8ylh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGNj8ylh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8401C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749530393;
	bh=njowRGH+fYHm50z4B2GvrPTc6y+oJxqb5ldPQQxDDvI=;
	h=To:Subject:From:Date:From;
	b=KGNj8ylhhmey6kO4AOM73j6+/gVY6S4t1Jh62RIk/bSsV+fLxixKqY0+YquKBZ59+
	 EO1HhuuegNy3JjnO8E+VQnsF4tPikxudW/1PwSziQDZ85qHRcyW9Tr4sIDwDJCR1Cu
	 GV+s2BGNy7OqD+hgSLSjTdIrWEl259xYsKeAifDqaSHPoDlH+HB4vS+MO9YwYEfRCW
	 Tx1nAa8DQaBVNLaoKmRr5aw8rg0nuXvipEmFqImLTqI2F5oAgP4B9pluYjuJhMCJ0o
	 Sy850Osv1deNZWYoTtR+Jz8pKdUVl0kY4brHJ17GXtkrvAXycjY6yt+DO31Yjc9zD0
	 UhaEr56oVO1Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C03C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953039357.30053.616417090038422185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2205b3461ded23d0f4ec0b428b01534d18456eadd4a5c958c1ff4742da6d210
Date: Tue, 10 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749530393
