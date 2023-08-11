Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6037BEAF9
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 17:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C481EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691773388;
	bh=W4dKOsOxvr3uhjhaa4vIOsVh3yOelF6FC5WCAxTpHzo=;
	h=To:Subject:From:Date:From;
	b=SytHBk8Y4FdyGtxTVz2r5WFQ+4glLPswEbKGsI7oq4aP/EwL9oBNE9jTUFkXJsMFH
	 EWYViei65OnLf0UG/6CO8hhqgjMAmTehQorJ9xJdxjI5aoSdM4dirPBKjZ2DMtCNRn
	 ri+pbbHDVTQ+tNapzt6DgkYp8GDocwDkbog+uw3tbHz6KaMCBgh0ynyonTiKjqoWEe
	 51EvrlWQfhR2AOFii6RVQN1y+1Td7tFJ/VJQHxW71PrqA0e2BXyU80LPrlxDRZRFJC
	 H/qtVZ9FF89t4iK+KKb0ZZlOKXF0Uonj5m90gXd1zLfUlYXFTF78dqCAgMty4iuuEJ
	 6RgpSghY2f3kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DDAEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 17:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169177338867.32279.11915179715209149865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1baf02a2fc5b084063d59e724a0f41d97fdcdb2f628e6a04746929031ec593
Date: Fri, 11 Aug 2023 17:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691773388
