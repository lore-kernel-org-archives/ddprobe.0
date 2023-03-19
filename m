Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3295F1846
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 18:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92EDC433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 18:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679249105;
	bh=Zpm5bjK6fBfKgbVh4qtk1Srgubdp0cG1s+pwM1KMtzo=;
	h=To:Subject:From:Date:From;
	b=qesYdKj6acSqUIh5Nxztdinamt0tnj3wrRvGADKsTPlbJzRUHT6bpVt/xONj4wLzy
	 xfjXH7UzvxCCmmOYCf/N2UyYFxZZQu+QcSRSM/jE9qCKwGIYSxIBDFJjG4pJ3/cH5G
	 Ch5m94yOFyI8Glp93igm6OfUICp+hFw8nG0vZKpB5Hphp2b/0AehO85uZoHpmsSGGQ
	 G/XBmsy7BUor1/5DsSP0Jt6qJZphaoLNmoOwOh0emS2jfO67KWoGKnULQmFUmsxFqC
	 12k/quLA+hTwWP+44sjN8WGxMxFFLD+LoehmwsMY6zvSWzBSZiCoJe2vXmTzjkf7AC
	 SsD0FKQ8SRu9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF500C6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 18:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167924910577.6940.2972498537292770918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990dfda5dc7961d5ea5e4b6cf51d4833daa8a6d658f4e4964a07c4e751fe4359
Date: Sun, 19 Mar 2023 18:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679249105
