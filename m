Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534F614265
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 11:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE747C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 11:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688125988;
	bh=kTegieyhf+Loe6GsQZSUKSZYC+pzDvrHVaUGI6uQEJI=;
	h=To:Subject:From:Date:From;
	b=SRW/Cpt/SGr7SYwsSgv609Npqah+hr2pGKl8PJvg+h0Dg2gnNoRoiiET+xVwauebU
	 1Ieho9OBninBDoKXNtCwXtk7aIMAKmIpwLF+B2VX/z/JooM5jliqfU7AwqDM4upHBY
	 BbcEAG6C2O1gInIJW0rymPbz7G78CkT52B0GvPvQ2pErWUiHttSdoah05gYgv56s2j
	 +Aeb+T2397AUq0gDZ8Ju460KT0h1lCheS5Nb5rtSQKDzuOZ921gZk7+J+HspMZTZd8
	 9bLUdLDPCkG5gwLGDQ3tBJh24JEKdLMDmI3ha8IytE0qwyi8pNru/wmKh1eHGXWqsz
	 n5KReyoJnY9Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28D1EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 11:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168812598865.10565.11487516637345843725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66fefcf9e14febd4ccb6cc32d45bb3a709fca12f3c61124f78f1b5b4f932460
Date: Fri, 30 Jun 2023 11:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688125988
