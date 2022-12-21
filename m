Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2FC1FD2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 951F9C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671615087;
	bh=KtJDGcwwT/mJtVtDapoDYHVkgRx6FoNpB6lUwBRatOk=;
	h=To:Subject:From:Date:From;
	b=c+mRgYhqtLQuiOrOvZPL76UA983/1vamhRsgd+iA9krCN7f/Uze2Gco8fijuio3IV
	 TksNIgK3iAXZCnoZd0WsXX1kNldiAKr1UKTKGAvhM0vA4VItAKQmeMYlA+vIO/br0h
	 3M9Fj1jASdz2uAwT3jAQ6rb471OQ46+bsC18t84fAm5jc9h5gic3LuhcipQI5nnpC6
	 174MdFXh4oX7tWtcQQNfzIp3pTmJoqP4m2KG7x2yp/Z9Ujjtmogaws47Xb7SGzoOT0
	 x91mM7WEORONVHerltqm8WbNVEIe0F7uxDg/km87jUlw1PTjlbU1KdbAp8sGw+zoeP
	 sMdoCRwK1IMUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B7EAC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161508743.21449.3179360364622807776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86800eb9c03f384521e4d66a287f8df7644193377467057697c0b9808b465d77
Date: Wed, 21 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671615087
