Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C6836C5BB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786606834; cv=none; b=cU241wnyXMD93g/xb8BEpZ/qlYL/9s4BWZfvw/lwHswQBUYZf1TambNRHUfntIt3c6Tu7DiV0loWA9fKLvsmLmrZHQJ5f3AWYeXzr1IUl38SFpRgc3vqcAknT64Quw3eVZX7vt9OoAjvdsMZEj+dfjzzh1xfsVZJSAu49EmH084=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786606834; c=relaxed/simple;
	bh=46L+nPKO+QKbdBCnzZnN6yPqMJfInNYd8CZ4Krawgx4=;
	h=To:Subject:From:Message-Id:Date; b=ApzT7/Dk6TmKOIly/NHW3lMD6xILJ0t3TJlB0zojrqaX3tGjb4k/ZTVos3VlmYo8kl6sYK8ANEIXdca7NSrwDSbG2oDi3RULoc+s4dMn1PCTRWrA7ULBJ3T7G7XP4c69e7Z+JjR6XiV1xHHEnRy91bi95PshmieLMXyI9GWjckI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ki0d84Nb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ki0d84Nb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF882C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786606833;
	bh=46L+nPKO+QKbdBCnzZnN6yPqMJfInNYd8CZ4Krawgx4=;
	h=To:Subject:From:Date:From;
	b=ki0d84NbQylRo/OnuLPE9hMFiRFFEsDT1SSt3ajVC0P4ElfyNOc5fMiUXM9eWMw2Q
	 TPPuoYIjzD1W34ZeW7eCMinm2kIneTzSHW1HkEPVjGyG0z1Er1fOCcwUINzUtD1IzS
	 E9E/mwpEUMKKbXKTZKOpHlzHlsGBJXu9TinBKCqjSdJWTGMg4A0DV6H1Y51S/djFLr
	 iyTwJSWoNBSuqO4OYNpzc98WgizNg1E8BuSEv36i9LnDpav2HOhkPP0N2kM+P4CABR
	 Zj16MJX4Ud9b2IavE7ScrybgXasmOylxzxo0cXzhsoOa4hnagxx4UMsSt9cn7RX+g7
	 xNaWjzOKZysTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5E2C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660683367.23142.17422818691812961824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb1ce1fe923190c8eefb1a1207fd709b704656b83ad95eee41c6276192ce2ea
Date: Thu, 13 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786606833
