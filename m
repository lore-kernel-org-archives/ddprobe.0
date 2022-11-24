Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24EF7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FEA3C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669260654;
	bh=4KV3wd6Usfc1x44YMRkOS8yvlsINIyzd4ZVeUtGhCSo=;
	h=To:Subject:From:Date:From;
	b=PVQ7J83E6N0vbb5cVz0+svWuXU+Bhv+bFe8DhbKGI3J13ZNj03uEl0qyy2zeWt1uZ
	 U9fHrx0BZER5Cp63gvp9efBXZSUl/Lf2XVGcix+Vpiaf21m879W8oyR9RvlJ64bonT
	 jKZn08P2ZrwSsOaa+q3YedHvoKpJjHv116x/zkFaDytRFhLHkZ27lq7zx1N6CBrEz0
	 2h4jfrYIvy+kM/aiQMz3BQuGvdq/9ZjUnlGRtbsl3IhdKN1iZCVQy/CiQCvx+YteNi
	 Cu/S1tNzgOtEtmYmtxjw23x5ZVJeNbc64BF65b0VtbHti3QbBdKG3gWLq8gbokdN52
	 vRGeNTMVEfQvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B2FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166926065435.17137.15038464854173989247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d27e0c140a0ff3bd47dbd7003113bc8f5a93a844a95ae44b18228a4ee97e152
Date: Thu, 24 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669260654
