Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC1929B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 13:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF87C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 13:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677764165;
	bh=CjGhZrfOrJRbOr8JxM4tk/qwKE8YLs8WcMDD+BQZyRM=;
	h=To:Subject:From:Date:From;
	b=YXOXfd8sfqJi4xpmXDGWyejLIn3hFw+U34y9NEo47XvfDc7Az/q3e+u6XGGBUi3iJ
	 RDyTPrTuZA4OCSscdDBUEnNPEId1K0O0pKm823Uca5cNxWzs8mBDAZrpqLJ1BtSy95
	 AAfM6fWXXLGW9XpVXedUXl+CX7pxp5uhMudtErzYPvHCUUNv/w0gv8PKT+HMK0cLQY
	 tMOXPJLoO2/vbBIgEGIz7coXEQ4WAPZEgDGuDTH3zUjoi3BjE/s4Pzz8b1z2O2bWJh
	 ce3g6EwO2xx+tegObcnZmNGEAn/KHzcjx/B+KBElDGeQ2P5KlExsUvHvFYlAUzjTnS
	 7UVLdtJ2ML+VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5897C678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 13:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167776416573.32120.7363359102771764562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a72c9d27b8206a4e9845519c614a5d8fe749e4a1e3c7927f40fa274c9ba209
Date: Thu, 02 Mar 2023 13:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677764165
