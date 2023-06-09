Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5D510785
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 13:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEEEBC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 13:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686316566;
	bh=lqlndxjqQa9z1HA3UWEdYWYkQlsJBi4CJ2niPOuGrJM=;
	h=To:Subject:From:Date:From;
	b=AwqdcetewWK7ry81lgbDxFbgsIxNkULguC5oHBPjMRbqDTOZiM3b3yoTWgSO7QYDr
	 zdtbQIbFN3Qwo3mis+VOx5r+9C+XCp6aoMzTp7zU7FWe5ii3bMCLAL4RyTr1IwfNKU
	 BqIn1s1F4j5lvOxOoZk6qa49MRcOlfir7RFy4qXw1WT9gSZm/Yy454Bw+OlbPBiHAQ
	 bVnvOz0eSoh5izZjD2liuU1QGR9bK9OgE7ipf2AnEDj13oGBy+sa731GY8VwfVnoJM
	 4nfz28hYmfkdk7NbK4B/rB59dVr574s3D3vfKuvVTimhorB+Q9cwC/x3GmqQrpz3l8
	 IhoJLK58gdb2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C540EC7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 13:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168631656579.31515.16750576269560805390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfd2b503d126cde8f4a474d2d32dfd52dfa4e93c089dc4ac7ab1664c108d6d6
Date: Fri, 09 Jun 2023 13:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686316565
