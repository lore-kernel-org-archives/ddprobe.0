Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22906FA0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72B8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673888487;
	bh=viA9H2uizPGsxyr44fwi9N8BT5ir7kVRnZ+iRTkNs0Q=;
	h=To:Subject:From:Date:From;
	b=rbJ6aOE6chv0OZBE4thz6NwsgS9++3XwzYGnPR0YLl2GD0cV5D8C5aDvFW0hbf5+d
	 SwucxUqOjm/DUDkR//poLwtECQ2Ob+M8KanXrKuqFCTJlAA+vQaXdfQ6XnKyPDgQwz
	 d8J5eCn2pwCQqrsivHxlha0eGAYJvTl7lcuIEomF6fhwLGtGr6+w7zEYF1bEv19ma5
	 LEcii2KwGSAOBxuT862unPFGTXorbibiGg5cTcARg/PGd7OcL35XAt2GcZ00sVGOfV
	 8XpSrw4zbfpyk6RF+yU2bY/YbseRTPyAOJsxRu2VNE6IHFkJjOjO6DeYOstw2n6UgA
	 LigniVBQe/wfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D477C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167388848750.7301.9356048430533365504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b8fedd6b565f9385479754e3cb6f829258d3e188996302bb68ddf44b65047d
Date: Mon, 16 Jan 2023 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673888487
