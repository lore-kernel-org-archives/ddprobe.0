Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1514184
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 01:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78703C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 01:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661651452;
	bh=8QsvaqSajgB/XYW7swzB37B8D/bjXH7bOPWfx5R0Wn0=;
	h=To:Subject:From:Date:From;
	b=ggCr4/fu2hZfCgYbI3rO+eexQ48UsuXkzEj+WFV2hMDYpntm9nB6wJdzTeyQsJjXZ
	 Q027ljkai9JPsU9Lye960kuWf+yFILhF4YsNao4TJ8UWJ4TIbgfg3w4FVQsrcKil3Y
	 HkGO3DROj9o+JbwkBB7I8QKwlapeRAbakbBhdFXVFHuhi4WcSFqN2KA2lOAZstSBBl
	 Zw3fCrsQdDZ7Oo/LkyvKmTBQeLdu1dJ614miHtCFMagYG5sZoPO0PqGXM2RW5h8yqj
	 /84EktQVB+XjoIANfj20v0B9yowqYEPIbDC1gC3xsxI40nmjvxLdZJAizthrK82pOw
	 f1dNFsyAasIxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A318ECAAD1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 01:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166165145233.26347.5878009171806279752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ce1505f79a9a962fde5818f565af917f8d8ab50037fbf5f126a09e01b7dc78
Date: Sun, 28 Aug 2022 01:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661651452
