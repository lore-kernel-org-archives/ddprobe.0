Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CEC1EB1AA
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786802434; cv=none; b=En8yNtf9sn2ltYm9NEtDKWVSyrjn+mrvXxI8Tgv5pEvtwcKpX6c9QVeZUYzH1MadzJEEcAVrEO3XK1WJYd1gYd07yHgpbdwA3t429Z3/MjjTVr30yX3QbbQeYPJAhmTNCuC7UOi8b1iZsMCT64d5BYDgm58QV0lzfG4XzaQnORE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786802434; c=relaxed/simple;
	bh=2UprdsaFoR2vKJ9xFfKt0Z05dZt4S/QKqAnzO96uHaQ=;
	h=To:Subject:From:Message-Id:Date; b=HIBUDwwhmDbCmMj6JUScp5DwReBsRaBy3lwNlK6cljnGsvwYz0LKVW8of3NcnrHbqws6G203C4+Krfn5y5Dm3QGvw0rauqu1ifYNzh947We6ZKDDIOaJ+JYYilQWhe+Sdavo0fMZlkFzmfeqjwlczWfEd7IhY3mRYigZcjgpsiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxJA3+Iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxJA3+Iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D032AC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786802433;
	bh=2UprdsaFoR2vKJ9xFfKt0Z05dZt4S/QKqAnzO96uHaQ=;
	h=To:Subject:From:Date:From;
	b=AxJA3+IqPzzmx/RBO5WhpShgkjIvhD6m8UmsVyQeBBy4FbRrQM0awiAe95ARyePPR
	 JkscrIROTaXTxqNFDuBZOL0cmo1L1ZycQ+k2EMMMOb8N8qra3UxEJiiUYIcFcCViTt
	 eVJebLoe7NyVjkHdMrATsJT5JDdfWyj3Ai+TWc69G6lcOnFPAX16k1M+HHL2ko6Zoj
	 KBdnXy2TpZ3XEpA9PpsD6dUrnTDJrycUM8iWhEFkYX44dqITdFPc7+8nKwnBHVdlpM
	 fYycalpQnrwXF6wS2/Y1hsUPhbpyQXA9aZk4N4q4NSO9tLBb1Gwkt++HFR1/aJoZ2E
	 8Qmi/p1hHwHdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB021C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680243369.5617.12386821001835235629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38a336f23f69a8b1d787c9c64ed79b34519af3ef2fbb982b2a103ba1474a979
Date: Sat, 15 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786802433
