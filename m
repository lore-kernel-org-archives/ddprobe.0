Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C827B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71524C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666408253;
	bh=rSxClz95pQL85KwkXxGSPNYndjrw3rjo3Fj3BfBs81Q=;
	h=To:Subject:From:Date:From;
	b=IU3oISUksYs0I0qnZnNaY9wtnjSMF77qucqkcoD2bme+ROtbkFqflFi8UqMKcY2VQ
	 Ua60ErMMQILh92CPirJSDYfZe46RUKzCgYn8BWF2cNeUTeIS8qPH8VjLwuSkHUi1zR
	 ADDTr0+mdrj1j72auVZv+suHFEPA/HyzEYgNGma/HfljKFKOA+HYM2oa7IybZ72ViB
	 E10EuIzbRE0iLxodO4xLOulPAv6to2LCVtMciQpMTvM7xnU5gRERtWj0qvr/ASzeoi
	 tF62n2adwVBubb/EYwxnGIvZYxi3IeW/OFsx9bTvgiu4coXNADaah36dNUPNxKXmiR
	 lBD6/zCO0WHvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B10CC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166640825336.24169.14553108860102439116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2e46b9b2b81d685cea6a714e86bb2a35abf999eb09e55d9f84c895a66376cc
Date: Sat, 22 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666408253
