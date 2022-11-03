Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3070632
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EB1C433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667515854;
	bh=qxmBRZZvLoXgimLFnz0oxtAA/w4VwIt4/5xfuXTAHKc=;
	h=To:Subject:From:Date:From;
	b=cfM/sbpr0SlWHwW2tAkrFdWeH1IxfgElQPOr03msNuth7FMCSMHoqTOWqRbQsRuY1
	 xbdiSjSc6j4NjIE1nPbHp1IW9+JPfgaQ9yvQZ9VzuyOUCRnj0tBTLWCM88YPR6GxBc
	 oXuoZgMlSeq554RnCW52WCQy24ZqFSQji/Z/Iy8ms3tIJP06GvItSl6RpDqEujO19N
	 lCIf7ssoxXmu0XF5Yt7K4HCnMOkVgQljNsQHUVXwnXj8Nl5aUUPRWVhgTe+Xyb3UVa
	 3MQrtHuzTAakx5Y7YDp4+ZwZobQZsxcUYo+UfdfsmjrkEJwpZMTlraVv6YmPbtGHwo
	 lCQzkWSrVAFuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7F1C4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166751585436.303.5700348349214163575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b23b60b9f03b90fe92d023e278340cdeeecb1d66ab119820a288ecaa7af7d77
Date: Thu, 03 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667515854
