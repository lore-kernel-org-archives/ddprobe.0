Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5371FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6674BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666993254;
	bh=jzGWpk3vBbqwkfH+Y4r48FtQizgVXDeD+sOgz9eDOKY=;
	h=To:Subject:From:Date:From;
	b=UsD/iEj5wTesp1+AE64jNODz97KK1YcOwxwLYJLNbtL9m2eaoNA8lXMZSMXrHll6R
	 yIePLmUgBbmTTgKi9fkE/Z2TpjRv5SIrY+pTdbzXFkinfwsa/s61s2jF4RP2GMdC41
	 FRb/wWicnz7YH9sZ+DguGatSGW5xpiLH8VnSTOxHMF+q9KkVTNoFb14vdHDnTg4+fk
	 gixpMeAOC+FxSiyHTAFrqV1s9BEkY16PwWDOpjy7jZwmusu38LNfSUmM6daor79NJo
	 iOXJj9ffkmYJUa5IUljf+3dwPeUtEt2LONN1KDc1/HcqvkF/Rkj9WG+uHh6UJy1XjY
	 EKGy6Wji4NwMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED00C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699325431.16084.3791283287751746830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b0d5a8ee6fc940e719b34344e74e2ae280f466159572f97bf5bb3c002f299e
Date: Fri, 28 Oct 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666993254
