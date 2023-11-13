Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143BC2374B
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epXjoKgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8750FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699909096;
	bh=7spFAzduXuorK3KC4JABfSehoEo+GSmEl/vgvxb7KXY=;
	h=To:Subject:From:Date:From;
	b=epXjoKgIuNFxgusHLIOoo4b9R1sPkxGElasXpGSLV+cNBqXqCYPZFKt3L69jx+WrA
	 dcqZvA1U49AVmA/c9ytcayHkvJh7h+LY9JVGfl9ETCbVRRiC+o3XhvRPyWWg5XcqpV
	 HeJI14Y7ot73KER2gieaFATYZgf4D7P1ApYI0aVQXtcDw8a5HdaDm2/4Rvb5drhY4e
	 lZ/6GE33+AN3ao43bX0m+5LuQ+Ec2r3t8AyKnAjdVIJPQg+aYse8Zb6xDdLKCor6Ew
	 lZTiHyJkxyiUphRHVaZDhayZO4HowRmSEbGE7spa5ltpMPhviz1LmaY3wbhaqXcjjF
	 IBcGaQ9PwBURQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D44C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169990909640.5352.1159299917953880891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383d21534ab8136625617f046754b5c74ac2aa6ca92b840952e64c187a7cd30d
Date: Mon, 13 Nov 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699909096
