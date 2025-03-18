Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D67D20D4E3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742327994; cv=none; b=I9J0Hy0qUrHWUHcrid9XF2//T+2exffoJ4vNXsBB0itopBjZJcLQrvxbTpZOE4yMhmAz5cs8HReyJUjpEu7IO8aua8iRNIYv5ic1wvfpN+6Il1AoURBj84TPvdtU5ntsNFXxk7tfuPf3x3FwmgVGgd4v2/VnyyTorgD16eiWVEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742327994; c=relaxed/simple;
	bh=GCELQZxfTCbnYzssHr1TXIAv6EvnRFIGTAbSyO0ss0s=;
	h=To:Subject:From:Message-Id:Date; b=eC4v5tQZxL3BdnRddKBAyqFgkrUV443Nt9U6GeW61JLqtHI6MkYwdikeZseZ9xzbIgJoUU3EkUFcuc8104hzyO5zMRdh2DGRaCE3hCzvjfwOpWPJh+tiDiVWNBGFr8E5XX6+3jxH/qjyhQeu1xqkwuxU1jDTPiaiZOyQIf59ICQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdIJxaBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdIJxaBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE551C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742327993;
	bh=GCELQZxfTCbnYzssHr1TXIAv6EvnRFIGTAbSyO0ss0s=;
	h=To:Subject:From:Date:From;
	b=VdIJxaBacUTWNGlTJUc1oNaybEOAKaUDip8nwE7G//V4Cqd99IqQMHuPsoerlW8mL
	 f7S1lcl7AR5n8qqQcLKgzqCVMNK7LJYvF9lzpyZXXgMEU8420a2sCv/vcdFZl86MRF
	 A5v2IWZIK0cl1+wear7jkOtNX8iW1QZXB/BxCLwmx4FAqI7mUnyE2AV2KLwrSnjHyO
	 qEVvp53EUuPc12TXxZqCbEZomFQ0lF7pUxgRc3XoT8XaBjX26XWKbCHXwHicVnxolc
	 Mos6Y/g29d7ThuFBbBpaQo9fq/wRXOpz7uoIjQatoffF3KwHTIYgURL3RerOcH6Gf3
	 AxoHgTo/7vDrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAB8C35FF3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232799369.5683.12264163511196492375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84825b6c34591a1da038b03420fc460ffe3899292c51a948b64075a1b373286
Date: Tue, 18 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742327993
