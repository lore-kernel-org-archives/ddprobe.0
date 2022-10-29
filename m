Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3E02F2D
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65675C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667065254;
	bh=N1Q1l26mCQpVCdrHHm4PM92leGNGdY0S3IvnnDA0gwY=;
	h=To:Subject:From:Date:From;
	b=aTzWbYaJ0ajKSZ3Mblsous/B+lQ2SiaoaU/IHWzzrefwFxtXzn3ZAVQK1YjJT1MYK
	 GaL5HXS6ZZUl+wK7vg0GWxHzrAHuT1rosio3uU8qqi+LT2cnofu6humMp8YTorO4QE
	 2o1L4SJJOrJS0J5UJAkdLUS55thMaGQXvBlleRJk0pZOPCuCzN0cw1uzAXBmKe9Mxv
	 P/8wjBS/B/yiZ9kIvS2b3HsSija3aoaaF69cf3vaJvL3Y29WqUXqeoRrQGhj45qBRK
	 KW9SbMKLCaG3RzzQ08+8NYdN01nn5SNjbXP95VK9TWuKkV+uJbwJK6UgF0/MVno/2c
	 +qT8/jZBa9NwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50100C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166706525432.15706.14864969046117566958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a3ad268aaeb74687af0077f226e9e5762ca33c4403627649470d1287a417dd
Date: Sat, 29 Oct 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667065254
