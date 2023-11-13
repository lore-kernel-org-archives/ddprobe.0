Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104C3219F8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQ/z4EA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 896A3C433CB
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699890496;
	bh=HNXRbvuRkeEFCnLZh5I7LLBiWDBY4Cs7TiwWlmLIlys=;
	h=To:Subject:From:Date:From;
	b=nQ/z4EA0YKDrGg4t5MW2hUKt88Hxrs0hrV+XY2cc5bFMMo2eni2aTtSpTHwsmhetl
	 CfRPtLkwoTFsk8E4YZ8gYoK8NC6fqOFQmHnv81m2ueXi5DYNKSegCi8o9JEx05cIgE
	 YwM66VpBvXWPbGhlX/pKbiGCLusbgq+7qay1GA2RTE/UA9bGutSYuQlnFFXpwwk08z
	 1GOaLA+KPEjNJRCbscDctJZusKZRWo5vmQGeql2siGWkqlT+CnLBsjHgXtjpB1/faQ
	 tYv11ur9z1tT0Grs1MBrjL4RaeeRJsRdeWjhV1jejev4C8Ub0hXQ1HNX+UHcOR3FqB
	 wwvTA5W0URzQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF60C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169989049642.28136.8190257169757103997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde2b7ec5c041324ba6298f1204c1a0cb6cf42eb30bdb809ba93cc2a6a5698b2
Date: Mon, 13 Nov 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699890496
