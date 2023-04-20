Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA4A193
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 00:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6EFEC433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 00:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681950305;
	bh=DhSr+2HhSCqBs8G1KVLnbprnAlZdBtZsrQAwtDDA5TU=;
	h=To:Subject:From:Date:From;
	b=ShNt1t/pL6JMh1yg8ZqBbr3XAx15C90tcpO6ZORssQ0PEfjfmfdmh18XrBUA+u/UQ
	 3rBMpV/FrN+ZLvnvSWXzgI3osxeDdBp5oPqTeKVZVpvAapGqQMJKL2+CfLWjyz8m8O
	 jECbXoWUEGSB3WTz4g3+nmgZ0Q2hEgp6c1iyeisPgMz9g1vzCP+HmypbBPtP+gMwUn
	 +r2iE4n2pZrHVjqvSEqlbTbq9HKiD8Vn+0BmD8zlbW5SWz7OOe9FwSV5fg/NKxW/Bl
	 yexAouXMAmBDV477BVcvwqSdlkeTlh5d7yc0+4rWS5qqj4CC+zIYYnnUnnT6bagTO1
	 nYXR0nzJuRBdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA1EC6FD18
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 00:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168195030576.14926.16100692325786062198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba707aec929df0756ec92f279a0c420ec8cb1b705e8d29d49553ff4609540ade
Date: Thu, 20 Apr 2023 00:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681950305
