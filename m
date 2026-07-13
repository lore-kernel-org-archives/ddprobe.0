Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D9E386C1B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783984714; cv=none; b=NpbZqHsFquXWG7xHfZ19JJpp31yZB3yWUjxM8vceEfQ2P5B4WelmRhTYmT5PuJer5I207LRV/nt8LcVQFSb3Ut90rfpUNSeD+CsaK+sORS/PZ/v/Xm3s4KFZkbaEWfX4Ge4RPzn2qnMUmXiq6QD90GkanIzTWUUIhI3gNzf/k4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783984714; c=relaxed/simple;
	bh=ND2D51s1833jiXLIf9HuOK8uV8xqon7TiVgFjp1wWQg=;
	h=To:Subject:From:Message-Id:Date; b=ksCPr6GIDCd9j1dFaAWndeR2iQjFvzn4kV3bR4gry29JEZGjqwwlPXhopQLuPGguQMSN/knOx586BxjWoxG0tRqque8Qonnky0p0blerSDZl4BC3eirAiWE9PpdhkP0UkWfJdKMOdUCl3d1CjFs5aq3yJu+l6D34YDQAAS30+GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfXP5DWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfXP5DWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB712C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783984713;
	bh=ND2D51s1833jiXLIf9HuOK8uV8xqon7TiVgFjp1wWQg=;
	h=To:Subject:From:Date:From;
	b=qfXP5DWkYxhsYUn7A+D2lQG5PNlDJTLCmwFgLkXmgLIzwj7Ai5uz/PoKQI1lEcjoM
	 uJnIIVAkSBiRD6yDDJavJcaXR5pdnYCcqfDa3KfsdTSmS3umHz0DnD0ueRBDmbcQJu
	 0K5yysgLr4EbVvQQtumZndtMRu8b5vLOOqdnO0V089O5/O05CwFySl0c0b3dwfjqN/
	 qk6lxqQUH2IxPFRKP2Hl+xegmRy+rhBhFTNC8P5nA3mR2OuNyJCEL+VOTtDPdTBxJG
	 R+4s8HkIbuQpCTkTQ+zGAkKbBkoLCwT/FpV4XsskN4mHAf2lbRGh5CLocq1ccP7nHZ
	 0CNja78h2KWUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA101C44501
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398471368.10011.10258332793046678819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decfad3a43fea9278828a2af3b8600ed23cdbc5f217229954fa1fdfa4688c9d5
Date: Mon, 13 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783984713
