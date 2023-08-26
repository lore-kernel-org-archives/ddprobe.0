Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972F11FAC
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 12:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FC7C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 12:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693053248;
	bh=WQGOpx/YgzQkjQ9u1kMOYTMopEMB4Ge+f1QNdL9bfBk=;
	h=To:Subject:From:Date:From;
	b=TLie83SqWZ8P+fEOMPFe0+66qNwQhgpqpEymMCw3b6pcO7AybKNO49frGQGJ1bXKc
	 jTWedwoMViQ99ayACxja14Znt9xR3pV7UklPWZ24eU4TyY4/e2Yy2qA92SxiqSBXHp
	 T0p9XrTZzx1PasQbWhgtBs5F3D/xdkHepKtZe+vKRwWsIQGf4xB9hAwmdK12ELs14Q
	 FQEDGXdSfBde6gPkpKUowcaq/xfbWQWDj+gkP3mhB/6Ycz13Pnf1zOc2/TcqsNwzCX
	 zQcaw8SedNxwc05Ds7XDevE9ViD2cb6ROp6h2CKEPjIH4JnxzW+cmdkYRitxskcIjm
	 EM6nZVBojoJEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F00C83F01
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 12:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169305324869.21857.14937019145327297288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 432345c668196e9a7a6c96fc0c541534109a45764448c7fd64edb5f172635aed
Date: Sat, 26 Aug 2023 12:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693053248
