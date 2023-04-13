Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3DE7E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 06:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75F8C4339B
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 06:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681368425;
	bh=DSuEPOD3SQ1gRn1c718iJYlIaaZ+uo4qOWZaiG15DwA=;
	h=To:Subject:From:Date:From;
	b=q9XJD6YYIq5zOYrjLP9E2R0zmKHujGO5gZQ0qr72oA7kPeVl3eHXppENAclM7E0lp
	 a1PGQAkIWOz1wLw61UmVehEj2V4E4BKvG032CFGhF19GFtOhYVGJvLCaqX/InrFyR4
	 FkVHcQLIj55JzuFUqYZs5x9b4bQfT5eHzEJFUFzRadSAYKN/+TxsL5nNKKTaGEcGgr
	 J7llbFWtpP2Ge0KZHwTdpbn+XtdYaqTDvjtWFKMb4F9DR2uznyFyFZTFimNbNNeMls
	 5a7tMcJ/OfGkPZp9ZJAixCfqRxhenJozP0c7y5rR/4U9JitqyfjOURmc4pGoZX1z8N
	 M8V4zPQhDHuLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF26C77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 06:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168136842576.7195.808902889171649991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6947483dc92affcf75e8d1fa07cd11df160137768381a0bacb33abb517968a2
Date: Thu, 13 Apr 2023 06:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681368425
