Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D19186B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 09:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB99DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 09:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680083706;
	bh=g2xM1iIX6ySn3Bbnsb2CWCkyqQVVnPtZBFu6zVWFUUM=;
	h=To:Subject:From:Date:From;
	b=J4hvhFezZRuyvT3ZF9lfCwPTkOocGftn5E8j3KjjlAPWx4BqVl4B6bKB5YyqbAd5y
	 kAx9UY1aXCHq+b3SSb0lmghBkCL5AbUzK5EALrdEeyfZcPhvMl6FL2kZ0YdLyrByF5
	 J53cUCnfUFoCHyQmCL5M6O8T1EyddOGwl255qmoyEJewypxf1oAZsORz0EXXrdbVLi
	 4PwIBTgSSplJ5Xcp0SmWIh16M320+KhaPp0tZF1kH5ATRPavVeG+HdbHHhWOzzZwAV
	 Kr2EW45FVBDCn5fgzSY8wEiikZiYKPk4vPpN91+o/hQjPaHg5zjYs+NQfjwvwkFxz+
	 OkLv9VNVcpfcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC95BC6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 09:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168008370579.25503.8432945794696016018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc4efbe08bd82f2aaf6f78d34ced5ff9fb7a3193a8eb4870b2d4739a003672c
Date: Wed, 29 Mar 2023 09:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680083705
