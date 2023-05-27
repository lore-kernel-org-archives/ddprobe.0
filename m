Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7929A7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 00:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 259ABC433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 00:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685147226;
	bh=TuinJzpBfj9HYhA1z0qIVuciA4NVKz8n8tsKDx6M0DM=;
	h=To:Subject:From:Date:From;
	b=qApfC9b4Mpr0FHYo3TN1707rWfl6/6bjK/e49YVNjoBQXRTHbpoZpl0gLe8Wd5W+q
	 OPRMfuy/9e4F+ZdaHzjHjAPQggVdtNhvqHv7ePHjZt5C8b25rOZMp0eBpRekAurwP5
	 30zHy0L2OhcMVt2T9h5iEVBLhNPy/DJZbfhG1mvxuJ04mw0brHkTUMEsTUYHF6FVEP
	 vOtae2ob7s3ndOAQZ4Gibhjg5IdCAOjjrME6uoXO2JzH0CyznuZ+2jkNxhA+TlhDPC
	 lK7dIoesR+AN9gJF4Kr+YeOmgHWgFaorGUEtST5IqcISdYBMHC7Om+WzJ15pkAWOBk
	 xXAXQd1J45rlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE298C77B73
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 00:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168514722586.9787.15003904327528200384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d842207962b2e6f5b64d2b41bb445452172ef9572c6c00a7d9ff2073e324ba
Date: Sat, 27 May 2023 00:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685147225
