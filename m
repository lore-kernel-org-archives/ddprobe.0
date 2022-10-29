Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D855C15AC
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F92EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667053854;
	bh=aYBvo8Hmx3HTkcfkAOdnlupJoWVUlzAHYotuANYg9oY=;
	h=To:Subject:From:Date:From;
	b=p6rGpMaB+AUBIXsOaCCx2nyxxwc6pn+H3dR3YTnBxM1EQDeHu4hYO/DuKMdYBp+2A
	 JUvuIDj5kqyFsoUi+SM7e8IFSG6Jou3l+aasJli9pARfNabxDcsUkWr34Xjcga1Hq0
	 OYsna/niZlR/AwFSn44c8M4gl3d+8+sa4omR1Cy72nDkPVwbLfPcPFK+mCw9YZW0YI
	 SHscFGxTU9GqgJzYkGbclUU1rigv5PhscdiSqWZxkBf61qHy58FDdY3Qpnv50Gk9Kk
	 Mom7+/shqj9OO8huhCD4Zfq0aX3XR5m4dO7GlHuaOpGvqnd7qaSbJMGNn1BoS2iAGt
	 GDrjoTcun0oVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F97BC433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166705385436.25120.12078125120189037447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e5c67e505d4ee9150e9bbd099eea1b2bf3b013651e353059c774adbb1afea0
Date: Sat, 29 Oct 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667053854
