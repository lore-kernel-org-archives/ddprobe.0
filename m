Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4031F79C5
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 19:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0C7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 19:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679082725;
	bh=dQwTunyAdI+EJj34aZzDsfAFj1l7rKBEITjGXMNtUys=;
	h=To:Subject:From:Date:From;
	b=cQPgpwHV8zkcWgjyGXQVDta7eHfBHABn0QZbmtoEmWILRYa96wq0w2IXYxRc/YPFh
	 +iZA9dE5tjCvc+QX+BdyCrwEZ5fY+7sJdG9mEN8W3u6ZsPCwtRawyugSNVWHkUlE/d
	 Jvczu3OF3A6gnsoX/H50783AfQODnxFGyOAqSha5WBjSzeZ39uQMC1rI3jwGLqEqXF
	 CmcchGVFky9HvFKbStyWjM741Z9hw1qg6i9nuhOuts/vJYjzfWLKJy9Qe+k/6nSDiZ
	 xd6n7x6+CkXjDAkspXXjnmWXRxH0gkGfTF7yCmRLmgeIAiuVmKL0/XA84TZGjk99mr
	 i/75c2xGT+JEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1FFC6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 19:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167908272577.3200.18289746157933839026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb318df73b13fb955a3b0a986d6bf24a8bb676ec1399136510d3e840acd5542
Date: Fri, 17 Mar 2023 19:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679082725
