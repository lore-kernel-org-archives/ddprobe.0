Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB1F7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C460C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669263654;
	bh=VTaTC6E/h+YIXpc+q8FUFUeOGp1LpKBt2xciVZqGdAg=;
	h=To:Subject:From:Date:From;
	b=ngu3mWQSt0/VsdrFhXLpKoZe+jkx+S81l+BqhBItwO+8lWt+TEIAuLlEn0dtRSZia
	 9bxuBufhLPCZRwv6JZe33DYHoHhltjQvMVU0GsbknRUQEg4OSRf/O8nkKo7ayA2FTP
	 7vQ8ToCYD03KZJJdB6QbkRaOUWmT3VfY/82GJPoxliMN5PXIIlw6+D6FZ6s4+sqJHB
	 vi9nMJlNPZLVcgxJfAJhyDqD7Eh1ruM0pD1jfxaFoyXkQnhTI9moG9UzH00TROArdu
	 i5VhNDHspDoCFMAuk0JvGdmn/PyIuPOLwryQa48xy45dPpOaoTshyUiG2EamXS4/Bm
	 lUZVGooT0v/Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54963C47089
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166926365434.9837.8321464054935259801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740470480ddd654a789286e1758e07a36a4d535a57e33d20f61771763a97ec3e
Date: Thu, 24 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669263654
