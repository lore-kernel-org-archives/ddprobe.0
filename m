Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C164A23D7
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F299C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668280254;
	bh=3aKOZcpGqDObrVm15cRpGsm0N8Oc2NDLPG649ThXIxM=;
	h=To:Subject:From:Date:From;
	b=MY0mHiUi2ypGHVhxCsGVSwHAG7Sw+4P/Qq1Y7OglEik8tjV0tzHUZMMXdIDbilUhy
	 Mz+APuQIrcKvBIPQnCgAz7UMwOK9t5cdIGdZZjnSbHh084dsXXi7kf3OIVarb4/bYL
	 wzmZ8NV48mOEqYEMe5haYfVzQL+3JYmsHDlaMA6kVGYsT2ZZVGoHk1dFs0dOVr9zOJ
	 od+RJypZVlk5B67hAGzVMib5orEWcXpBx8usP91cLQjtUJ+nvjHgtiDAc3fMh50Zy/
	 ZZGdv6/BOzDao+AVs8SSO5D+vx5E30/URPIq7sMCSvuaHrJmBys6TxhIx8eZZnrWzW
	 KMe4gsQ840nGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61723C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166828025438.29335.10275673434531672552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49cdb3f50585cbdb0d813ce52daefed679104f69c805280f70e54b5701ba3f3a
Date: Sat, 12 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668280254
