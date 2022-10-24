Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8CD441F
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B16FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666630853;
	bh=hnxhJoaqEtZSEwW7ojSBgiGj6Wegf45TXJ3cQE/xffU=;
	h=To:Subject:From:Date:From;
	b=BVA1eFOB1lVbrRbsPFvWuCAY2YJPeFFm1QKG2WEb55yo7OGp9B92BkKKK0veWHkcH
	 DjOIw6sYoYIYUnNzluLiAodOiPuo7czfAFoTOIrV5tbfjEPRzmPobKPGtdSE4QDB9a
	 Xb2UPvAYW4htsghXXmtf5VTNnNroMBzZ+FuIDERY0onDl/hK934A5axnT/oO7JuzFq
	 7wsyclNDTf/76QYVr6pzK2XD9STKcqOWM2bqip3TE4QFyYMuflOmjrLKdtcvVHnYpz
	 zxL9K4s1mjBrOsZXnUL6R25TvYDQTdS5KiXhGnI/64NMuHAgwDcTp15foGlyd3vgrx
	 6T8BtJsjLS0ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5291AC38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166663085333.16834.13612875130412301639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4b8347df2e7a99a2bda63f7d8e8d24f976111eaae7d6abbc2227e8f717fa8b
Date: Mon, 24 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666630853
