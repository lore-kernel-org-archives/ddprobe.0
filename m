Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13114C63
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6864DC433D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663771853;
	bh=2iC89nVUk5l8iY0Mb1Do8oWc45xvEH6JJ8ZlFGmVDSQ=;
	h=To:Subject:From:Date:From;
	b=Swdh49cCrM9pAW04DQsPx3L41WGAUgyVR1VTvIvgKeax7O3z0eZh3aKcTf88S50z7
	 kS6jsJuOCAkMitknZ6Uz3qxOnNO1CIBF8dtopZ0pOA+0ehPWfbXFpfgDrhvcq4NFDl
	 TBNhgc77CgBbuvl2cBIxUutycOyp2WOoA7/9bOJHlrJj2v/A3afxxQY5E6Ue4LF6uZ
	 q90POazKzp6S1M33sU81Lv7vXEp+L8N8J5vhT8HP5owd9lA98SHAdfVoFCMSWOxXM0
	 LrUGS7Wa+WplpQXBjIN5mC+hvXYPttLP/ChoS0jMPddXaynVodZYvFTLXOIh2awHQo
	 KMayvA5hg50Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 530C2C6FA8E
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166377185333.32408.5859137701717906116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51dd6dac52132514a7324c17650359d69c4893b1087054e1daeb2883242d1b68
Date: Wed, 21 Sep 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663771853
