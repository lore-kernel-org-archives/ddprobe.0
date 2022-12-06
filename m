Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B963E20F9
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB4AC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670305854;
	bh=NCEf1Hll8EJfxqDG4TO/mLXh6snjQwTsPa2QwshDx5U=;
	h=To:Subject:From:Date:From;
	b=uAOWQs0uu0/o3byGYw0WcTaW2y8xmcsTlAkUyk3Mw1R4xR5+d/jjqQhmGEIQ3Mnf9
	 phMoVtc58Y3JsWUpBDfQES64CXSpaOG9wL8JsJX2QrRk1+psAXu9gFBwG0uXW0KSAp
	 DcQZAl1AZlVGdQ3E0K6tSyQFyzxxOEHB/1zL45ju84RXZUHLMi6WlzZwi7okhu8i0k
	 WvBau0/5GQvVyv04oQAwFaH889USV4i6iAkNAoqkoN7YhGf/FBvmY51Nd4Y60nUv+1
	 OmXoxLTaca5X57FombioVrz8vXxhDI2Ogjh3jsKbBzlhoMOQs6B0rEOm5z/Rryv0Vj
	 ZrSOlqD4xvTkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F4BC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167030585432.9805.8587911501463180400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2bd747770116d2731650e5682d1fff442fe39648af59faca5f98875529e999d
Date: Tue, 06 Dec 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670305854
