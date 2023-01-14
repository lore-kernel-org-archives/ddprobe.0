Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D900B7E6
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FC59C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673668887;
	bh=trf09ftG2sIGB29TR7gFd1izlkNCu7TKzsWg+bmdBlU=;
	h=To:Subject:From:Date:From;
	b=FWoiNTnQxCcYJgWrBIF4BIpnQK+pzIQfE1JlGKVuVKKH+19ZKCOpNlaVYdc1T9fAc
	 F5W1A/j/R0/GlSpYKQRALLZfprsbTXVUPzLNvxLmvsVCG9CIlHO0qAi5c35XZkSH4m
	 gl8ZOU7qOo4aiIoMG1FnykcfRkQrFl8iuyOhHOOyvA8dcpcoIhsoLgBgoT7NCaDbMx
	 n9oYAVahRcENVQ36KA0o2eDAEFDGobDOowBXHSby8JhsczEUMSD+wnAMBrybN68BVw
	 GfpcjifaR3zaR8ZAULqrs1vqNI+kHSfM6x3PUeixo0vEbIpyA5UTqhdCYKDTgGUMu1
	 csuHdn9aC5CAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76BB3C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167366888747.3900.10050565807545639391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea368b259a414e16eef7301281b7e9c2b70dfd5ca61799e5738385fc93283d12
Date: Sat, 14 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673668887
