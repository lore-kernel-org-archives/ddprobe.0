Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AC17ED
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 16:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7160C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 16:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676911145;
	bh=1dDz3rLR4swjytKKecjlHIo6qfuOh6Hn2gGcP0Md+/w=;
	h=To:Subject:From:Date:From;
	b=XHIZgE2NWeJ4EcTz/apx9aKCgZO1qZSxovNOcM/gsqxie4SbvQlvu5+WAGAMp/zVI
	 M+0zIAn5Rhc5tJ49+OfW96r6CXNpMbxUHhfUIxG+UPdRruY6uKlKNNKgTSfyy3PF9n
	 dra4580sbKzOTR36aGA79E/xWKTC7SzmIpBGl3DHRsI/formsokevUuy2NswgDiFK+
	 Fktraumh9p2yCkJ9S3lOx+4ZgnIPZkcVIO3YugZvPV6aTId1JzCLGOrHbjrII+Xto9
	 rdSPhHTQYgwGP7RyAt05CoGtpPgbiMuGIYpqGE0jgjuHzzWrHrTVXkOSpwMp7ix9yT
	 7SBlsZPU8P3iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE69C636CC
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 16:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167691114576.13759.15905941551456846995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03b15a65b2f745c0e01e093aeef2c0947caaf037a4457691344135efd817bae
Date: Mon, 20 Feb 2023 16:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676911145
