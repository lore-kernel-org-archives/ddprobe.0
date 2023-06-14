Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DD164F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 12:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C142AC433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 12:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686746228;
	bh=uSBD3izSlsR9jVbopfEKhoWUENRxtVtVkBoy/Wv8hVQ=;
	h=To:Subject:From:Date:From;
	b=Py0+4TQo5ACVyPnlsP6WeFNts1B/RIFmbLGgxbhJFmvI6NnpI7YUx2Yb5Fy7exq2/
	 CVaq2Kpz+J9AJEYPM0J5uDtuxrVyHFeTz+r0AHmTk7gFF4+EX0nAb8IlaPm65j9tZi
	 /GKNCYDyx2f9EPrWJUDZEi/x90XGUgkSqkIUZrHyANqI3jhyQfFR/m8sn3QcMLRekq
	 ND1AszJZEIxGk27yrr4PCID7DdYnaBymse/RnLgMjbdfOJw6lqdVbRxmqmk15WfyL2
	 HV7EHjC5Yuydv0eH56Z25khqMFMnnpqs9U1QcfKVxgZ3LZWd3qOWLsBAnox5siQVfg
	 DXZQAJyG1ITLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E1EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 12:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168674622869.20554.8479909373987974345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280fb00f884aab028f7e89a66b1666a12565f1172f8c6f376051dc19ac759acb
Date: Wed, 14 Jun 2023 12:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686746228
