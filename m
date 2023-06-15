Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521062E0FC
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 21:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D681CC433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 21:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686865148;
	bh=AdhJNQN4jIenCcI0gou1RKNO80Ru976046HLOo0QLbE=;
	h=To:Subject:From:Date:From;
	b=NUOf9DcBxL+A1u2it6NM5o649MQqxO6HhIC+Dmgwja4SeEBK9/x19F/Jp33aubcXq
	 Y03toJFl4n2oUIq8J5BUpJj/nJa7UPdroOref+mpMDjBJ2STp5P1pkrkZyGfQSPL/S
	 ZqSglg7H/QlloPgrX/RV+gD2+vXloCR7r3DFeuy/5mLGUjkuYSGGN2iOsRvej1OTZ/
	 kPB78FUa4FzbsrOrjDK2j8uZtUIzxz+ThCHFnQGtyXwcy4d9alAN4v4PaZYZ3KOScF
	 Qv/JJ1LLSQWZutnMjsg4NBIoQTZ5NGfRcN8xoMX+enae7NJD8dlnOtRAoQYjFhTLtD
	 nL2IqJtxgIPLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3695EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 21:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168686514871.9638.4001367992302492607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4de7d1e98f813acfdc69c5cc2192db9fe421e28eef04e4507f1d189a6547e9e
Date: Thu, 15 Jun 2023 21:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686865148
