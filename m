Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BF614F9F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcgqC1ji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8838CC433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699011496;
	bh=+GRGdTgqKrMEszIn18nFhGvF3jxXjCDTOiQK0RhHTO4=;
	h=To:Subject:From:Date:From;
	b=ZcgqC1jiVp/udFcSp7vcU64Lx9DoTuMTFOOf5F71TrTdpfm0JD3jAJrVNK9GjM3an
	 8woMf9hG89KQty2sFzvPFiWsfsIiq2NIxtz6UZ3XnEqnQQ0S++RzwnHDVyD58r4APS
	 b+0gHLaGsmrlj7gyKWtcfepnf9NdU/yTd14fAUBaQLjNTFQ7wSN9Wd9LlsGPyFnfbM
	 c7rUZlUuMC0Ztj5nc/dcT20nzSjSoVXvs6TX7wjA60D85ZDZfEe5cZfsYlFAOPM0GE
	 Zyz/eP9iAJz1BqVlALYFs4NvaDry41wsz8tfW7/VdpH4CWVtwaj1csK4kWtG4acV5a
	 b/ccjFG4BuVow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB5DC4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169901149643.19503.16879104860526262855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9bebb6618e1c014b8d713b1cd4b350ae31f4f66f5f3e370632215a2fb2c3459
Date: Fri, 03 Nov 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699011496
