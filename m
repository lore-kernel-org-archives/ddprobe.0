Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C0823A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 16:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D843BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 16:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676822885;
	bh=wLPOAZj2Vc2RGrTUMMD1ZUwea5cQtmknqO2m8NiahaA=;
	h=To:Subject:From:Date:From;
	b=Dw8K7JMff0/quTRoiRx0KnHqHwDhNwFMxz/3KkQM07Kom2tvAYN/QQdUBaXUZC5Pc
	 j3c8V/6TD+9MhCCgREqNp6JE5cLTksoMX5NIGuTXRtaRwbXmgOFDWxFtJ0cHc62zrD
	 oTMkr+Rij070Lw9a8dw+kD8xyYMRMvA2rtFcu5ccYKmovfbLYoiJ37E4sSm6/w37du
	 BDEq6O0WBga7mouYfM3OAwU0mE0RLPh5wT5RO+DU/haPqPj6qs4/FApbIZJDNzOHBB
	 0XbKSYTwjX3iAFYkWoKQTG5F1+4zGD/mrrhH1lVDhbmTjiYahGsXSUMwC0ysMlfFqK
	 /cumDLAz8pj9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5FFC05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 16:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167682288576.29161.14891530646531591605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21426d32344d58bcff52c4d4e2fe079f97b6ae30ae7d512dcd51c6ba5d4d9ac2
Date: Sun, 19 Feb 2023 16:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676822885
