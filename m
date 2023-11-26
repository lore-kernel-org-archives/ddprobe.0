Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BBB3214
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnMS4zJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA60C433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700978296;
	bh=TM6ipxNipBtXHsqRSd499qU5s4Hk26JIZ/I8lSXm2E4=;
	h=To:Subject:From:Date:From;
	b=GnMS4zJ1YMc+ONsRbkl4l+4drEbileSRR3dqR0mshlq0f4nXn3zg6MHwvxYPd/tiH
	 4bbxiNoVpbH62C7Rvi1POgVHB6NUv7Xcaw7+fkEf+agvMfBqm2vcoVClihq3TNVi1u
	 tTIZYNgiXem0v9KB2cvsCfLLi+zhxiwXdUqHjixoWTlcJm6DQvkbUx8d14Sporc6ty
	 xuAcx52j/JLcLNM8lFndqwMsyq/X9wZZIyCcxYe7kQA/md+j/MPv9f81k3gx9w1o3Z
	 GGaOgKKSzBTJ7qYfZV3nhUoHGT5VglTttRgey2tp4i6fFcfmQ7tygRIUdEFBXAPI7S
	 QRwQqtVutEyUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 613E0C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170097829637.13067.17223965914508502655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d927ebf6787876c4782bb2e141667d7b0a82779edcaca4a59183370e0c68e588
Date: Sun, 26 Nov 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700978296
