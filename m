Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9ED36D
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 01:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CE1C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 01:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695518108;
	bh=ioi0IahqoimMf4/sb+yu4NSU2MBly29y4hfLVDjxJCU=;
	h=To:Subject:From:Date:From;
	b=IHEHuGNQU+xksP1ooJvCW6vEDfKUIebBwCPkA21fEVGq4rX9M88VMjZ13AOAhpi/T
	 zRms4DqSDDZD9hAwPTqTlaVSajlo+US4JCdfOBK+JJCVWNNp7CxzBoYW+yZjnYYCbW
	 F+bh5TOHt2hRW33ufR6SgMZfHK2yTToic1+TA8wk5gNS9nOOiFqU1u/ttyUM1dqS/k
	 eXfM34MgQbD0YbVJMONrffExPzGe8PtXcP/pQrSOKqA0mqS29hTSIIJ+nsCBoAkj4s
	 0Q3lWlm074Jtf62I2o3BV+5Uh3APeMPlArtGVDkWIbtCFSucuWyg1bqRsaz69egpPb
	 IdSVYaflkRRYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90E9CE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 01:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169551810867.6555.1918973778756253721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90734fd8055aedc1d1f037fa2d9bf6631932854e371bd9ad74ef13a9f86dd687
Date: Sun, 24 Sep 2023 01:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695518108
