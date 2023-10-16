Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EA628E2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 15:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9jA3oyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80F1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697470628;
	bh=thY1L655No7VcUW87FI+6SKaiTq9gWzo7rHf6rg3x1M=;
	h=To:Subject:From:Date:From;
	b=R9jA3oyyKSE4CsptnB4O/nw6KmiGIJfDPebGeoCgDXISfpaegl78vWpHbTEwqdf4M
	 OxTBLfNOKYwQAqv8zF0cSd2XakAQm3saiK/eCDDeVhDiw51E9VeM1+E91vDp8nTL2Z
	 6vsG+z1tGl34ty1Id5AB1uo5Kxp0a2p5awIUrC4sE3M96WWDgvrVzOJdmfg98JYz3V
	 g2oNSPyFKzYLlAsYks0LHLOMEq0Dx88bDTz2odw56U0GmDNIZECwgefcvPJFu6uDXG
	 lyYQMo8UCLI3odePnhBkmjLmIKOJsalLrF4goZzDrKSkmiPxFnf8Qgqo4WGqCwMR/j
	 ulIpwlNd/aA7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91ADCDB474
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169747062868.11544.8744346490047166007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab7f485d039217149fe5759e2623a1b66afa6e1743f80d223c8a93c4afd8913
Date: Mon, 16 Oct 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697470628
