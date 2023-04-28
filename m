Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8605415AC
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 01:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2EFBFC433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 01:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682646726;
	bh=o/jAIGfkI2iL6uYqTLJ/cP/SIsWIbO4Qw0yyuUi/Maw=;
	h=To:Subject:From:Date:From;
	b=hNECfIVvB2axU6Vbska0+RKB9FqBOlVJn4KqsZYcIOliYegs3s0BCEH7VBEIDoW9o
	 R6tYLkpikWAMp35aJFWlGy3O2Unju4NBENm1Eeqc7O7gLqjS9Xc/31A83QDdQtXhnb
	 /TZ1XR1jKMfGtSs+ud3wlvFP9QQA/A9PFgtZVuilRASvBtdGJlTkTz6BiNE9MjCUD0
	 XrYUyMMae4rc16ObL78Z7rr9PgaV7iyhuSLzXsfhNcJlxmfdEnazKDKOtq71vTPlxn
	 9jEqpSUqxsLhL54tjfpthVvEIa//KndPguFVz+kOM+HCZ0ZJ49eeKC5VKvl7fG3iys
	 duc/CzY28nJrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5CF0C77B73
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 01:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168264672585.28980.12251233833902958292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b64e22a896a0443ffc655e55b76fa8198f3ed63e70d7e750ec7c6b0cdb2817c
Date: Fri, 28 Apr 2023 01:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682646725
