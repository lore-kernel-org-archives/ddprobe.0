Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23173374C9
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kx7v+OYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2A3C433C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698417496;
	bh=v9+U+EW/Vw9l9WRzUEpcfM8tmVRjMBwqPFYHUHlJOiw=;
	h=To:Subject:From:Date:From;
	b=Kx7v+OYuXV2P2jnhfzYRP23LU/5kvdTAbh6S0GvPawZKhC5TyPm68rZNIPj1GHNlq
	 zze7G+iot9SDehvXXHPyKlmFVUDz5uaNhk1P2lFO162R5yX5JT1WN6W6D8gG8IE85+
	 9FupP84Uief58Nwk6ovq1LNtV5+8R8qODp5xtp8GsND0rrV0r8cGgfbMgJzkc2FwKU
	 XJyf16Mes7HEhunK3c5Q2IrfmKrB+a6+NjLROsuHTcIrYthV0RH4PLbpwIepbVneFU
	 qPmLqx8/d1qEXoIFXj0BG7EAlm1AxH6Kvt/AH2eqNg3Q1yF5hhViz5ShNDgWCbXfro
	 +2Ep2EX7RNmlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FE54C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169841749649.5866.9913752661608019458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d919fbc32ae02df1ad849946c53bee4fb5240e76c2cff1dc14b39ea9ca3299
Date: Fri, 27 Oct 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698417496
