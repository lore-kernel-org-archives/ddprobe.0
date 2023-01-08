Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A3E1C3C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86615C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673163687;
	bh=pv7cbOcMy8N8yp4vuJLqWfDkHFnkMMd9zmX1HU8iWJg=;
	h=To:Subject:From:Date:From;
	b=JvGE/mP4GptPEZaaLszRgnfvATHT2CrW85hQWwYPMCteaDgau0auw+7ThV7H9+wC4
	 s24g80qCioQ4h/rqHnU3G5WiY9IY2E14dFN6uAWcWIe2/BQT1mH5EOIvMz4VSu4RAl
	 hCjXqdOC+MIxOJI/e3pg47ikp2Rjk8boIUYN02DxXnbEpMx7568yrSlAKZvnRaPqrC
	 A2MUAMH/VH7wQTW9/P1YLn91f2lzsIsrWQMHX+Odkjma9wHJz97gR4d8Vi5MIxnVov
	 DNgz+8MlLjG522p6d4OSFDsRWosJFJG7LAVhr7Ws/OWVZfL3LCQX0bOZ293LKO/hpU
	 Dllguxu/zqA2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F19C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167316368741.3606.7259026928111792617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ac4c9a84e453403b484f132ee587f6e48f474bf4add563c80a700dc90739f5
Date: Sun, 08 Jan 2023 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673163687
