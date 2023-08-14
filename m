Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BE1BE68
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 13:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C700FC433C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 13:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692021188;
	bh=5b7tepWcwqqdNieFUZFoHA1o3oaQG/pUk++f7CFOV6Q=;
	h=To:Subject:From:Date:From;
	b=CwBElkmfhTBxShHJYAnfZInnbaSj+/BU4aUDVmEWvLW+pWTni1vu4aJLOgDx+V6Bm
	 oxU33Hhic4vuzo3UWd4ykMJ5LoZxqq3v2J4NAIkv/xEQux8JDcSrtIYIUved/8PWLo
	 u1KdZX9AmBiFFk+aWMaGMqNSzDdZOTRmN1JHay7nL2nsp4lVtKxj1Sejjvjo1hdxh/
	 uxXpWe+HILHOgLPv/ujMBA2QBwWUELM3KEUQ/rTxsWP4UjPHfXkefo0/EhIQNOsGs/
	 flcr55FFRFzXKhl2Bj3UP1UtGwFRzQX8s5WxgZiDsHJBaAuN9q6V6whxOquNnyLN+y
	 YqEbBKfpd/nKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF78C001DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 13:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169202118866.6500.17241459336839638541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8934b2fee4116042da244156f9eaeb3c9ae7992de20ef3a1998069faacf65a
Date: Mon, 14 Aug 2023 13:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692021188
