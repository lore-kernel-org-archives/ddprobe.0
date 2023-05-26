Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603262CA9
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 21:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12D90C433EF
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 21:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685136366;
	bh=CUFroTmI8ClAmyEe7DU4HosUC2dZeGKO/oj0hlXxf84=;
	h=To:Subject:From:Date:From;
	b=MvuH+QTVcqIaX1036cgOeQ5vHZZI0LNinh5Qld+LdBcDhivDPNVzCLsPPSVEuYqQ3
	 P5sVLDpZSfuVbnXnbB8hjZnlRuIcxpe0hPvKnLQR4YWBIkADlRta/ucGEcVtjgT40Q
	 VJ5E95Kx4bv7++zHjPA/gsmKv+qW1UPVUe8EoMbmE1Vc280odbZuT1kCP0WBpKJMGx
	 kHBz8NDWqYkPddgjNNtw1GDXRtLEdZE5kQ5eozxGILgi9ufGm/Km65+y6z2GqpBauf
	 y/8q0olWb3wQ3QYd6+A949WnL9zs2VXEYR+4/5LFrc0Lmo7sUnEjw/MTadFF5MN/UD
	 0cCoRihjXPMwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA0B7C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 21:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168513636594.13150.14042500577062176938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1970281a9b137d879c903e9476dce2e2a21a64c60f2521668a13666d97a0f559
Date: Fri, 26 May 2023 21:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685136365
