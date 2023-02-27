Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4A879EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 19:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C37C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 19:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677525965;
	bh=A4jUR1p+TIEppXGHcZ4d/XVX4hOPc+L+kOwGb6LAxm8=;
	h=To:Subject:From:Date:From;
	b=SIdEp18QRRdtRS20mHV22HHiKNigeiHaCmX01Qq6hfBwzxQCdYnhcOK4b7Pjua44r
	 Tqw9spoRyQmhMVIvAT8CwZN4+VHnXVu2m8FRew3UPtCn/eV4uth5h/+CKnYHFWIJ9v
	 iNk6Lrm4LLyS7ANcA6RLviDLuEMXdRW/lbCSxZobMhpP0FvS6dISwVjf1FcnXwTxeq
	 PFIqyobf4clP7b0+brBiNDj1CeMagKbudnWGfZCCR2oyX63Qu4LrxPmnMoMYqZsI7x
	 IRJGOHZ68jJwfxwdyV2tAVuYdmonvQqW8vEXTCTGMFg3nk5iuMMEZdl9oJiHqIGme3
	 WibeqCDh8IWsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75D0C64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 19:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167752596580.5311.6965561278872961719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9626c0a170f1a83f654b68c038b7bb1cfdffc03265ffc3a6abc850d167fd7568
Date: Mon, 27 Feb 2023 19:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677525965
