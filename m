Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077BC31741
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4P99gqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82109C433C8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704473896;
	bh=nld2Dh+1dhrhTwl3rtxr9HjDkLHbQDPXefDALXYSKGU=;
	h=To:Subject:From:Date:From;
	b=T4P99gqXsqAuk+N+FcCAvM6rOdY9ZDsxHzvRmeM6mCjAs+EhzZ8yPHRUb1sQZsi8n
	 paleJSZzsYKrfIpnVcQSsvRfqgCbgC+Q+lRnT1Ws06PwlwMTLqPr5qX5X1jeoCv/0V
	 QtaO75Rv8QTccnPkUFwyEjWkp1JwLRo62S0xR5WTyNy/OuEPZ2jAjna2sJHiAlJp+P
	 r+/X6Gw7hM2pETnJg7nXf2UMfujmoiEKjEwOizZtB7vz4LSSTQcvmT0029iln0R3Kn
	 W7jXggYhT5sOEr3WSuiAgkcVq8K7YwpGb707Q7RaDyW8fGML3QTH1KCxhaXJJ5OFDe
	 Lt2SSEPYBEiVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68BB0C3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170447389641.18723.12571525608131729339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5f2e12471134505701485452cd85e503f30842726716dedaed8112392fe968
Date: Fri, 05 Jan 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704473896
