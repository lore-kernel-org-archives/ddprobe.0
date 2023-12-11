Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077B26128
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwMneCWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B761C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702259896;
	bh=59cCKIe1pzYFqIHMYl56wpOoEB5Bb9/k3ZnFgS9pR9Y=;
	h=To:Subject:From:Date:From;
	b=iwMneCWZr2+Upr1R+oOMnvT9Ahhuiir133QAMutw2YuUajV8D6v+lHp+8CVmeCNF3
	 HKuysCczLK5KUmRZStnb8Ktpnknx6rQFluL9+cNZzDcCuHtGk56QoYAWmvdXZvhOqq
	 lJ8Qz+eBt3ockp9uKPZJMmAzzosy3svEQoiWVVnMug9i3+0Rqle9gTNF9PYdX7iv67
	 uzTyNhn3w8/gPZzmXkeDNiFMTvaKqHR64gnc0lfyKk+zbhOEp1wL8QLYzB2qVPlEeg
	 t4GM9mJ7tHIB2zOUY9evGGYUhsoWLhjrv5DFkH4tDz047a86EtxDbKH1Kis+uKSdQ+
	 XzVePUIVp08RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFA8C4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170225989638.9554.17331061359763744250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458a08baf769f027c662c9ad6d1c4b8bddea5b55b0a12bc9f7c8a351138800f7
Date: Mon, 11 Dec 2023 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702259896
