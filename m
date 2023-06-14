Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5280E7FC
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 13:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D643CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686751028;
	bh=HU99upHzBJltyJnvo5MU46msyiNMcAZ3wNH7jkFCyew=;
	h=To:Subject:From:Date:From;
	b=GOEqozRdVatSrBSrx+vqrsD2Y1xKlrD57ng1ZhhmWbAbqm5sIaFn/cX/F3lQZ9vzP
	 Sf/CsH5CaQK8vYgb2y+RtxFaXpG9UIK1l2ZDUw+mYKlCGFFE0KQ2jthSKscmuu0XeL
	 VrU0DbryB/7c1OGZgFokdvKNeQGGUoaoUAH6rgCxeNk/s8Cmdg/oVAj+zrL4s7SA26
	 jZErTTRByAHGOm22hA7R4bo61RPLXxq+E5HhJTK2s5EQxGYzN5qkaXr8LpBhezjM7s
	 Icssl43JPpLTNQ2SyIDiwU+6zb2pnpkBMCzXvw6pna7L4OdJoBlgfeHKweJOCRQ2nQ
	 Y3DKAxLQIcSDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD21AEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 13:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168675102875.4688.8031934911778136169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522124825d933c9d29d624bcab27e1b745667315d973a1d0fcf3cf49fcc7df82
Date: Wed, 14 Jun 2023 13:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686751028
