Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6DED2FC
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugaS+7f+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C81EC433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705385896;
	bh=GCgeWVRUc+xrMM1+aXGz/uPbqv+KEmpmeS+UROiZihc=;
	h=To:Subject:From:Date:From;
	b=ugaS+7f+o9HqtCvKOr5Jqsdhw4mRGF8sSRDB6mIPvgc3qnWy4g9Q438DBepjYgh/a
	 WnQ+YJJsRDonmeH7zSC1WsbaGwK3QEIB6K0yzbyjFrLsLod8g3zMduG9VKlS8tae2a
	 L12O4rgHsZy3rafqCX5Sewwh4x97Vmba4bO9up1qlf6PD550DeleYEoljEz//W0LI2
	 8vliYFsHcy2mAcEqWEBlLy6KutAU0eovpV08bkJrwbXTIoRsdqLV4J1MmS2vjJDo1d
	 s+kMwXz0iAGCH1ozzh7JQw4gOcgpEfCvZUQvuMRKmaoFU0ocqFm1E2TdaayIrr6vzN
	 YYoOb8AXv+Z0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6446DC4706C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170538589639.10113.14010529011958444287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1b7e75480a5cd9e94ece6aacea5138bf2a0d712a1d8f04ce9c50d2df5d9688
Date: Tue, 16 Jan 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705385896
