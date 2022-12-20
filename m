Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1F5D10E6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F0AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671499287;
	bh=CXNsWHvBknsRKetaHYkrniVWR9+ljC7kF4k7JovI/fk=;
	h=To:Subject:From:Date:From;
	b=TNR56TyNpHOUtGpNYus+rs16bOb4bqWpcsA1UVBsuPvJMDtd4ex+7D0kwg9zhjwQI
	 nUSYoTCdcbGgPgou6zJ4FqEc/h7YnsW4VmDC51ZWsVz4LceX/0LqasX1hqzK8kLWPJ
	 a/TwWy/1siMEtZ1SbMnIjgAEfHHqS3+V5M4qzkYoug89a+bwuyNhtAqxXBxTaTbdma
	 gjdwlv9SnbjtY52TXHSIzXlioJQ4r5xnu4GjVB0CPbL5NBnPzEekxvXzyHk8veX3gi
	 GO0nad7Y2/3Obo01LfQ6v39mab+vkiYnx4OPI1+Ke8LPeeRjhYXa1t0LSdpdrAtTfo
	 5SVCjmv3u3u3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609D2C3DA7B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149928738.6737.14046454493200939740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e815df88b86cc7c695df811a6062363895db30cde86b5cd21aa810f3927bc9fb
Date: Tue, 20 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671499287
