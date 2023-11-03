Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C97B18626
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xmhea+Jq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E9D4C433C8
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699032496;
	bh=rm7v6uhSE302+/fGGTfJhTixtu8e1T/b1paYr50Tw1M=;
	h=To:Subject:From:Date:From;
	b=Xmhea+JqjRP1FG3ShjsX+P69ZIryuZcYzyIdf+rxFPDquPmUMzHq29gw3PPJ1gpAh
	 7bK4VEej6TnOB38xz4DaTv3fRyKE0VVHRhOuuhS3Fczj1HUA13+AiqQtP6ry0u8FU3
	 qdYyI2wt9tvb7G9dShngnaqoL0B3XMmJZb+EFludLJuDVCfrGwUbVtWafLPW+739Ih
	 233Kwjbrjz4SwFj169uoSL38bQusn3W2ab95NKw++3jge3oObVbgNczQX43SIMkVA8
	 tTYrS77cluDb/qGiL+AklIz9uXJVVFxMsHJwG9kXIESFi2L2kxW33OurhrdJwQYAt5
	 AQzb/gGsNlpUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E946C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169903249637.32225.7453223884443604552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94816f0b6d25395fc2a547a80a3564f4f6bc0044a4aab8b5802415542d731e1
Date: Fri, 03 Nov 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699032496
