Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AB5809
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0DB3C433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666610454;
	bh=zWfsTc61pLbJkPwBMMTHUZOBfo4ZGwf0ycRpJcN43y4=;
	h=To:Subject:From:Date:From;
	b=ooz3B2mfrwczcbwIONWdqXcs6/WMrzWfA/kus8ue6V90G7qpxWF7uT9n35QECqPa9
	 z6R2SHiayzGwgSRB84qxhFBlstE/HtxS500RHF0zJt2UwSp3YR3NJH/WNSJI/TeUqi
	 uHbeotMomVt8ll4AWd1ToZC7p6tMM2XT56gwz68feevFtOhvkMzlNFWnX5P+LQ8s/V
	 abwiTJFV+fRFL7n7XEIV6OYXtbcIjePDly9uNXIAc4IMl56x1G057NcKA8S5zJzbvZ
	 6ZDx0CS7ze4Qeb1zWo/qoZZpLlYM6qKi5byDksNhGo9ZOkeXaTmDsVFhHlmQL3g/nv
	 sGuE72oYx57bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80F3EB6463
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166661045364.30852.8348199869029553463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9dfe2eb67e313e27764e9b297cd1da97cfe457aefc757a0e1be32a9ed7cd8f7
Date: Mon, 24 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666610453
