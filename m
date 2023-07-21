Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3194717758
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 11:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4440C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 11:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689940328;
	bh=5nE2FFJSvMcAeBhVfgOwYJhEL+tFcjLXp5X3vGOs7rs=;
	h=To:Subject:From:Date:From;
	b=nYwDcvqD84nPxJeajY6os/qhYzEUycq8bJWb0h/x5vLEoGCs5+1BRi3KCuGGrulzi
	 EzLx0IIHvsDDqCMUn9OjNUF7QBrywxmcOCg3JMPGQCw77p3J+x8mDLZ4rxAA9Ao3lP
	 OXq82HNXiIlho4zZaSOpK7Ld5eSoW/IDWDSLcBAQgNtlQwBnfoMUOe63N+MfHdHN+c
	 hEIpfDdHTJMqPVw84Dsb3vVhYAR/wyiF1wKRSTsy8eIau2jqan1KAyaCMc9JoqSDtu
	 92uh/5j1rKRg/kFYXS6Y5G4HYGLXSKIqSEki8aelL4Hg4zN8yAzNzLP7G6fbEmxuf5
	 8FlU8ulNUT0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE93EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 11:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168994032869.8079.9326496539951110543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47325b37171c84c5589941ee780cf9b20eb1e5c96a764eb2d2cdd208d7784b2d
Date: Fri, 21 Jul 2023 11:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689940328
