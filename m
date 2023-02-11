Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368122F3F
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 23:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7369C433A0
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 23:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676157245;
	bh=7o5olRwyqjyu8KwGe1/uVT9miANI7IhsyBmvn7iYtnE=;
	h=To:Subject:From:Date:From;
	b=YXoApPus9JPyT74Z/xDCsukSu8wcAoOgmvy4pYZrQZiV4ZJCM2DB1CLxyh6wTwJH6
	 aHJpvt6CTPyAqZ6nqV3MPQIGr12Zdyui7qHH92Zn9Gq4kDLlkzCCnYWJ4tFM791l2q
	 sqthbXC1HkKuqkN5C3IKMDF+iBwbhjolxag4XxDksHBcnD+dcV/Kumrb7rhtFql33x
	 X9cApzxtZGLYhzei27s/sQdPtoXK2+GtHyMUsy4Qx08iBk4zRiYhltT9064S5B4BNu
	 LHvkrYNXdcJHAEKRIUTGIfEBY6fF+oVaD6yFwPiOdmwnBbcxkRoNmlX6PaZ1qWsXys
	 bpLP5GOEuNAgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF70FC64ED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 23:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167615724577.6217.2677871976826335462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9099b029f77112f56b90da99c499d920f54446517f62a5635eba9332d8cabd23
Date: Sat, 11 Feb 2023 23:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676157245
