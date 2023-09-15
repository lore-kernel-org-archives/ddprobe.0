Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A58C1097E
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 18:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD865C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 18:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694803508;
	bh=PKMY6GICXD+pX8OlEC3+qxkDiTZYwIWFoU9jb7CQ22E=;
	h=To:Subject:From:Date:From;
	b=NHXjqB9XwLEb2ZT0J1kbz3MAX+uFQY9hpllHkBYbLK72egEpV19u0Y2XRo6SkcU1h
	 GZjFcVOroM16dxAGFLOI2QSVBUnwj3YJW+KadlGHhkTnp/KyIBFaY4VIQJtOlqYMDq
	 gD9n5CEuaHWwket5DCUnivsl9M2tebZwCfuLyNmaAvn1IT1lEb4iAF4FKQlMIwyyFB
	 h+Dgjywv4D4rxH44Bd+G+SydWYvr7pE1M79XEHR7mOFooiRvsQEYnCNpq3l62v4QUA
	 tg/9KPsI29QkOKjJcl/p8Zy3wWjVoaoC6JVzfpkCVCCBn5Mh5ljx5Fbtlsmmabnbs3
	 pz77CMSaCOexg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE906EED61E
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 18:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169480350870.3491.12909492569827515657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023c9b1f7058aa6579ce30e72466db14132c10d22f33294a014635abe544517f
Date: Fri, 15 Sep 2023 18:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694803508
