Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6927D53B9
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 07:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvlhSpT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A3DC43215
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 07:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696491368;
	bh=GieJ9QKMk4r95nNKY5lwLfig4TniocGAS6ydvHtVWKk=;
	h=To:Subject:From:Date:From;
	b=PvlhSpT3Nj4cuD8Q2oZjcUyvxf/N8LmCSff6OfgDAdDIUarQRjp/PCdaFrt1Wu9eH
	 7bfTzLSmfZITebmzk+imexr3CMVuKRUFl5B71iAi04Qdm1dioTOSqDciD091rcHV2+
	 3eMjWJR/9eapEpJEHepPLBCczK447mLVcDH1nCZATXONplxuDMlCzmRGJUr4YImWhc
	 sGS3GnVYSnjfYqaw1e6ZWjBQv2f9clDmICPnWo1tCJGMundcUZGGC3GLXGwNjdU5vD
	 Y91CoDz/1u6anYOag9E8Dz1q2g9GR+v0zDI9u/p7TbEsVztrWLIHOxYxex6S8rYL3g
	 kbC22m+DloL1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B586CE7C4F4
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 07:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169649136873.22540.8564019138493785729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b22be08d31322dd2f9f94f7ca390edb8d51bb7e1286da5c5303f239b7ee9c7
Date: Thu, 05 Oct 2023 07:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696491368
