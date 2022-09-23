Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33C529AB
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68C70C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663925453;
	bh=hcBIl3yvf3ecZ+TGs/eimumhGjfCedKHhMfyyrLtE3Q=;
	h=To:Subject:From:Date:From;
	b=H4wc+BqSqac93AYQQUBnN26fvdD0Q9jXXhokpGO5r6Whs5yZziOPBJD6jUOQNmXuy
	 Q9rhrdQ5AnrugxIsOMWwNe2EVv4s1jwqZDFD8oF8f0ZjE6oGVNi69cKJJt1OT+KeNT
	 Z1UP1J/wx/GgFTC9CdMVbCdDV48EOTuc1Rwj1qXzi5J49bC1qSVSy/RRSJedIwDmMJ
	 kcy6k6ibSGMI3RNUMCTDIxEVxIASK2LASnV1/J+xOOZKuiiEkn9FJZ0l7B/8azqU0K
	 gB/nEv/aaIjEFRkQncDaJ1iIve3sbiDDQS34VchqUMK6k3DkXLbaQ+69n5eQ+BzrAM
	 uCuErPGfxGbKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 502EAECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166392545332.2826.2921874982038062216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0105079c4965c8757b63deabb7541ecd532cf47daaf29fd6bb68aae7fd600933
Date: Fri, 23 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663925453
