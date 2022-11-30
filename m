Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD08D79C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786F4C43146
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669833054;
	bh=g+jzN0SotfHTuc00y7nznydIrsrOAwS5LNwE+k8K7mY=;
	h=To:Subject:From:Date:From;
	b=BQIOUq3Ql3s7I+v1FU5TvLkODZJLjslk95ELXu0SissLfUYtu3bykmKEFEr8Fdq7x
	 fifZGZSl3mSqw8mik4s4SzNeomrqsxLYCxIC7BqI8vTjZpZL0QB2MlWMczRCMCuXYS
	 vmNOoh3v4kOT5hBdbiZTAf2qN0II6bxn5RLu/U6/+/AHqrha3o/W3A0JcWfKA/tXhR
	 9aujfyh7UkWG1xPvjZOCK1R+HhKniT2P/9wELI/RwOtW2bxxw3MPoAquJh4/+Y/6KY
	 ItY8a345uwcZ954kQ+tGkkc9h3pj8oU1ZPChXFKOpiUO9OCOfoW/oRmPaJ32brD8Jb
	 S4tFG02agtZ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D3E6C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166983305437.18778.10446000463177656295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393c92be88e22183cda9faf4fcedd3f2f6f0a6c6add5c72b74570e43148f01d0
Date: Wed, 30 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669833054
