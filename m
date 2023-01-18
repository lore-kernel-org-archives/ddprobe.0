Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACAB1C04
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D57BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674012687;
	bh=j/MszhXYxuTgODVvKCJXCsG/d2EIgIXNkvB/3ZOgm4E=;
	h=To:Subject:From:Date:From;
	b=Bm5gSwoWX7EfFFq2rTWWoQoGfGOvIRWTCqyUx14or6QJIc9E900UX3kgYG8LS6b7J
	 HBZEgk2oVfpedrlTbfqcMrLAkpScoVo8ljBiafpZewNBK5G49YoCKuR/eL6vZBrLGn
	 zqP8nO3zxU5uCRgrs36H50u/YnnyGpq5TblcOX67t9Ys86EcNi5yIJ4WE+KzOJj4yP
	 U1JYTFNUEjWe2zoZ+OaXv7k4gdoqJsz3l1DGGjM5lKbBD7Jcdshpc4MBwh3P5IYlsJ
	 qN6e73hPCejrOXy4MZYTBTbqQShEnVPg/jqr4XymfStqtuBs/iRYu5AvTHzI+3S8NT
	 xVHy48OCnbR5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D0F8C38142
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167401268743.15506.6548619417272104119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14e808aba66ad8aef8fcf3f2d669e3198976a3b50980b285a6d8ec6f41df977
Date: Wed, 18 Jan 2023 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674012687
