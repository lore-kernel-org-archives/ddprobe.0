Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8B12F43
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 11:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4852C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 11:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682078345;
	bh=RpTg0HxnPO3WgEblbI1iQW/8LG8sdqzWePGjIiSlJ2w=;
	h=To:Subject:From:Date:From;
	b=Ft//J5AXP1hfTPFLEB4m5lz7erA34nDOcYr7G1378dEDEKiJpn5pybrmAA28Ff+l4
	 c/MfT0EpU1QN4sbayeSGVKFnXH8FMQxYcG+Uvjld0Q+Jc7s2a7Hr4Yia+xYCB8Re7M
	 YQ3Zdrw5jYO6mEKjKX09eC1PupSwAAEOK7SAVYe/q70NAq8wGGLRd2msVzPmNEHu4y
	 JdJ8cPHc5Vbr8h3iyVVlSE7EVFDndp5xWG/V/f+e1HFQhUIoi1WWrqt05iBEGOntCm
	 y+JAZ94f9jLX6KO9Uv0+BlUE7Ssw/u3zHdlJ+0p9ZC/zS+mMO4IOF6l1snVPF/jfIi
	 JBjJjBjdE2dXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4329C77B75
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 11:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168207834579.30861.18207584634376316044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aefd5581cf1ae060b0dd6ce6b6f1e680136a424601d0e68a3e9d418c0bdc527b
Date: Fri, 21 Apr 2023 11:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682078345
