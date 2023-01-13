Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E91AD4A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:41:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E695BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673631687;
	bh=rMxdAc9IP1FCRbcZ5iUToSmdh01daDZRZNhRHxAJFUI=;
	h=To:Subject:From:Date:From;
	b=d3iruqP1nbSo4/cc+LB9D6HM/rPap8iQLZW3bSVpw/ftH2pvRih5m2eCgPzQ7hKts
	 yY0H62+1gIypTOo0G0+K+C9HiB6pwD2/KKj1MnmrULUEr6tMYgLOuwVa0lJLeUgvD/
	 DxMXwXB386yxyzWilKzWMwbgRuTMU60ngWumpTYWx1H+C1a+ABer/Ht5I3FOwaBCMV
	 PycshbAOs/EX8qbDDZeupEreUDqCkStfZLnxyIPVC6gJGo14ZM6a2zTKkLPX2YIZcX
	 p6ohYaYUwQ/1IPjdhPXYv6kWeCnPCaKiu/xZ5HFGIFAtwrpcI0FiiXzrMWGhGN5GvQ
	 6vBUMslY3q8UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56E5C3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363168778.16012.15342007684264564068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9800e78bca03e7cc4aceaa7f2be6658988123fa1904056061a996186088b32
Date: Fri, 13 Jan 2023 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673631687
