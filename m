Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D158E2F58
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73889C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669312254;
	bh=enuT5NmTcg49iDkWmHZ77k2VNVt9TWzn0iBnSF2mGKs=;
	h=To:Subject:From:Date:From;
	b=DwuxSh7fWxMhuebahaw5SqToQR+nYS+VOJXgYHXkK2RpNFcvjVdEgi0ar2ggUIcPe
	 GRtSfCB5Gg7SzF5usbiY2YqE3YPfcWGIZKWeKsLM7N+5GF/a+Nphsmz86oHlSrnL7Z
	 Kzy6keBERet4bydKQtGky0+Y1dJKUK+tmpNiFgYeBlM7m8ZFE1+2CmWXOeEYQ2Euxu
	 i7904QFgI0aP2a6KidyK7szX+KvDuZke4K7ssxuIBbOEv1QX/1I1yjKaaDI1gcNREq
	 3JicTFibYiVLK3uLTy8dHgcYX5MVnZaotUX0Zu8OQRiwsDqOwJ6irXiYjR5L8hkk66
	 2Ws2Be24nU2gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A114C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166931225435.17747.14981050166041331490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65212a1ec841f90ba2f7e0ce33045a46d0acd98bf3ef6073610d62f6abad70ad
Date: Thu, 24 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669312254
