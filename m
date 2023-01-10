Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23CC3232
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A858C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673342487;
	bh=CyuXfULcRdFSuiFtj14C9o1lis44oXT2ko2X0ij2yxk=;
	h=To:Subject:From:Date:From;
	b=lLGLJHRCXqznu14/eTBf3/yaChzT6P9Z6mdvB0dOsFX0/GkgB3D+T7iVlwata0Kfz
	 5CZCeugvtQv+YQlhlFoTDyAPg+x7IosMkr4dal0wkHE320/bPN5x+SmAblktZPZSTT
	 xVLhtO8W2jYT7KML2hhVIx8vGz+DS6BEAOlfOuttMzKdmgFgtEqj6vGfNBZ8sCr7lz
	 fup5+Z15+BsbGBnJmDZBIdC8yhfkOrieRuXH86pn+u4291vTzmE2ObhtLa7/do1c4x
	 14PPpUghHjK7+DgznFRx4tHXjKssX09TMUlzYc0Ob+UceLnhOq5zsWplljCwYvlm4i
	 yP5Cuq5dY/3bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7518CC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167334248746.3133.12760018035916397442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136f6874cc2cc84ff3564d5459f5ac537b4bc09bb025aa9740a157aacf1ebba4
Date: Tue, 10 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673342487
