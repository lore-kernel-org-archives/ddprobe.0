Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657CF1427F
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 15:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D425BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 15:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694877908;
	bh=yn3XoWQg7XlGlpnt6uMlGnCwx9Z+iRbWc6bMczxEQ8o=;
	h=To:Subject:From:Date:From;
	b=mfEIh1UXC0OzE6HfizxE9f7de2uIUB8/cGvuuvoYJgPQ5w9X6tGAy4IpXeVOgfsja
	 wWU1Y99aTuszTpiU/Rv6uKagJL82KwFS4v6FmvnYWRNe59X7cdJxwAqMIVPgoKabgi
	 ITP/t2VnmYSxTsyjgZOPUMLZ3fDx5bLmCmmtLOSr8eMUHT7MXXA/ZBS0GqouwKPWHR
	 lSHyq/8ciFHThiLpi7QtpG5X3Ejwg/23LjgpCu/VcO+wJMIxP3qtaw7lXdg7Nem5JW
	 bGYuLpayNH9gYTIOTlx8DiVCuGhGLasTYGdBGcBB+F5u+U1a80UBoU5BCGo5ugIJkF
	 wDQAk3BYIaBAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B44CD37BC
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 15:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169487790868.29882.12419978115058902468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cced49053a6193d0dc503049f57e9486d0c96679724382c2af948fe82f478a84
Date: Sat, 16 Sep 2023 15:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694877908
