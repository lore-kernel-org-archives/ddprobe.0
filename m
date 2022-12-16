Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA4A20F7
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CBA7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671210687;
	bh=hMoV4Jh1edTQH9c57QH537vqWJ+4XjCbp8U7sw/GG/g=;
	h=To:Subject:From:Date:From;
	b=Ja/JMDDD4xa6ktLeAfL6HKBE6U6+UtneqTgCSS0VF2cT6Zs7sOdGpEpzeLVfEAFYF
	 d6iNUKCvQE6yLCdfA4QGFdcOm4Pdh1Fykh9Iapt/cnPIh5tQxTGlyBknhJ1vxVoLgt
	 CjkA+yV7wAFwLQUwGvZRQd3zhKlUqxLf8tAJjmlj3fDgBcqIwtey1c9an71njXBnUw
	 zXUMF4NTZjIEUZL5ouo9ZPSBtgJj0E5v5WvnP/mnrAT2LLjYnz7b88pBoKuvnLjIRv
	 VwU1Q6GDxUTRZooDLscUBR4QArL/3n4B/3+DxePp5yIcfZ1c/ZRoBFOS0T0NbfvOZs
	 LBQEFrMSWdNEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C72AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121068743.27684.16390598315936484615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acaf61f0e6eb95c52f4f077252ff4c125466765ac9f9c29c9f66dd922aab9e3f
Date: Fri, 16 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671210687
