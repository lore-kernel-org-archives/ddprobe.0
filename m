Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEB51FA3
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUDfHt/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A078DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703642296;
	bh=Ff1CfeobZCUZpf0gwh1rbDzRIh6pJ8SUoaovIhljPKs=;
	h=To:Subject:From:Date:From;
	b=pUDfHt/4bgH84w5rO9Wkwnn0lRjJ416h2FzdLFLxy0eE7Br/rK1afGcLIMcNXj4UU
	 RayYTTnxIXPycm63VFBdyGF8+/YzbqRH8682+lSzi/LHHQWI/qwD5SUBWzWSqWL0bX
	 dd3Ohv0Ts8wk9gmmtcugHxaIB4pw0Bfzw5RoINCo0/lfTcF3nFOvBsUsDxXyVJ+AlS
	 ZX8sBis/61E5771oIJ/I1gATJA2f91/ljg9zZgVWuDDA4/MZVZOfeStAsK9xgiGs17
	 F1F+FXq0O1mkb/fAkkiYF9SLkcRqguJwjVFXh+KDZzooywZU9weVLcBj4zxBfaHyyl
	 7BCcLeUKHfa1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AE5AC46CD3
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170364229646.26492.13985764292555997227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9163f1bc0976ce287b452c76c4ab62bc7ed56335c9945829c646814207e77a
Date: Wed, 27 Dec 2023 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703642296
