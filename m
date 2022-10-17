Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C579D4699
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 732C6C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666035653;
	bh=I8Wmb55E5XrcovmGer0zyvfA50hwAutBXgdwZXZVmus=;
	h=To:Subject:From:Date:From;
	b=rOIm1GA/jtN0l4x0gOw0/VNw1I2F/jXhuAdFuB2JhClailZoHJPeer0oTrNZpuLPJ
	 O8s97ZFlh5GRqgo62uQWu3l28acmM5xYDD0exVaJ+E+ZjV+E+gwxz/AG3Hz6QBfNX3
	 SPq6z+kxY/sk2W1zgCYL1kM4Ktms0Jtp4kxpzHTwSNuZCpfKIx8xiGA/jBjGZzMMD4
	 FL+a1tgVC7k01YYPUc845VhYmuaS2BkrsJUByTNXJT0iebrDBc30Ik59Tn2A3EnWak
	 MG8IB8W0e15tXHg6l/fjiue4FFjn7qsH4QPryh1CZmIDSD4gLd10gTgZNrEHsEyJpz
	 0e8J+jgeItqWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A4F3C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166603565335.15349.12338552087155681100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e19bc40f9fe891bbd50fe2acb4372103e506a7231af5691775f0218d581c73
Date: Mon, 17 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666035653
