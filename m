Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68FA847C
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 857D8C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673553087;
	bh=/dUDpkn3JvmDeJcctrqBRBidllqoIecD0osZbG09dxg=;
	h=To:Subject:From:Date:From;
	b=g1svQLC7I7d7bpWKlr2H0qtDfMKW2AUh+eDPtxHIlNgAeubXwWETDwKr4SC4+xMoc
	 XChSAfz8JiQlLpaBo1EQbkLKlBVImRE9RKY1D7oGFNIyGXvuu56sh5NmrePcvmS27E
	 9J8qdDXDXoJHY1K2Yw+ouY4rS/NdQaf9QWurzhjRvRUkGtyTszpYQUgcFMlChIfFZz
	 n2b2arUeoQ5mI78jaBl4DPuhKU3iXCcI77N1d1rKdlkXIvx0qBX1H5FA1Oc0bsh7yW
	 CTlO4g28kRUiHQdWW+0jq7a6AIsAMqV/IAQux5HfwCW6iDb3NEwhurgFq8BLgXtRKS
	 oNlOillzV8pdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE11C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167355308743.18098.12231790617982235229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7a240d531d5ad5ec158e33d13c578104b56b3c2ba26d3fd7e21521db09fee7
Date: Thu, 12 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673553087
