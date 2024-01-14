Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2378B15AD9
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdW7/0ql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1B9C433C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705268896;
	bh=itAFVx/fJxrAP6U+nDs92h1HXQxV//TcaVfMlKYxmxg=;
	h=To:Subject:From:Date:From;
	b=EdW7/0qlc+KqQU1X0KifBPTRj2IPsS4T3OqYDtG8ZcTEtpHHyec/FanvY4CkziaLj
	 CVuzqlqgGNPh/VveAxsrswcf/NkAD8ZIBgbyiBRVybE/LCtojXujiqA9O89BA0UHw2
	 LBooVnXv7qWzQXcWxRO4QD1SPBe/qdQ+OQFjFprDA9pghoVCrLtlogKWHQNdL594lY
	 N1zQt9hNGGyNJ323S8sLstMUGol1lDZENJ8fEranwgeMBQ4HdZA5oojcG3dWLagyms
	 5fJ/NEPtr+q2g3lBeEMxR5Q+jPp65qyP1xqX1gQuUvremNFz9baqwNBwAuFBmIdtTy
	 MZCzHDIHYWiMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6180AC4707B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170526889636.1792.3200557237651206397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b3fdd5108a5bd0943ae509ab4ccc0b4830668aec67f6c2bf43d7cff7f3c513
Date: Sun, 14 Jan 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705268896
