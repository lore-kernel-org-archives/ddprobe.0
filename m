Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CAD146A6F
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726122354; cv=none; b=aGEwfxWngMi4+lohzwjPJfW69EBPbpAXVsWR2eOd97SVYy2ZAG3CUU/x8lQ+CNze0xewJqn8pYabDxsns3Ou4o/jkvLcevjxhl/aVtMGQa5yjSramERvRQdpiNfa5Lx7ozCKadYJhDIz1jHuyvpQunbJt+81Vc/10CBXDPy5oPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726122354; c=relaxed/simple;
	bh=UX0KsE2DsSiLOKG7r4uHj4rrJK64UET4+uwUoMrVl7I=;
	h=To:Subject:From:Message-Id:Date; b=oDDaGptS4sq7ls+PvVEwDlpCffwZDB7KkSsWb6jWpX0g1/GdYu6u60L0gyyUEln72bK0qHZZRWUk95OpTPU8lPCahTGLaswe4Ht5rOYGUCYdXTVDudNEqaz6JUkUZ17keNyrp6VMjEOKrDN+nmA0YPqkj7Bnxoz0AEjHvQhZqrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gd8oKKNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gd8oKKNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4F1C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726122353;
	bh=UX0KsE2DsSiLOKG7r4uHj4rrJK64UET4+uwUoMrVl7I=;
	h=To:Subject:From:Date:From;
	b=gd8oKKNHQg/e00nH/H3oek2pNfGiAsydKryWFpzXO5TI1UpDYCeMvMieMvCZLmK4/
	 kEv38O6fI/yRsoyPSGu+xRktoE2giYQnv6IuqO8hPXbz0VBDNwjvXE8zAOTAdNFKNc
	 a0oWvnqqXPqf+okVGbjnWSriokxVjfOzvRjoO7y8u0+qgbExc88SPOZWGvOWyk+/PV
	 tlbkP5JuB3Z2/HNfumheD7mv0SB/y8uVIHM23dsxel1vpgonVsaZ2B8Jyv+SaBRceM
	 86W4M3AgDtgqJaL0rylArY/aMH2NcWz4QXKp0LtfNUroKKkyFvOI6aiZXkL2Ne54wZ
	 lIbWriMfhD3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F44EE644D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172612235362.11429.2244903840835364798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77112c1cddd60528b51b9745518db33e80ca6573740a61e79f63328c2974ef8
Date: Thu, 12 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726122353
