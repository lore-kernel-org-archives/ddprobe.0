Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0A2A3D
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 872C1C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673759487;
	bh=g/X24IgWoRkFLCPVa/yYPW06VeuqIYe7o79Q7OxqKD8=;
	h=To:Subject:From:Date:From;
	b=jEF6xU+ZXVAYc7fdx2dZ2xLTdgz2Bp7/Q0RgTAOfw3lBCozqp59DIxuUjSeXdCvZr
	 KdwgmfZ2n0O4hQ//zCy+o42o24rrghbNVhsyYfZ75JjSU27cGYY/eeMMOXdyiQeB7x
	 P89ErBErJV7Il1f/kSoK2fH6LQQdsond4b5rjpgDz05g0MsHfHxDTyTKEbi+lNMkwV
	 yg7Mym6eNq9yRdmvxmbfcPzLnUk6qWnGoSP47D1BmnsReCjbaEJqH4k8iyYVS8wZAA
	 /9VJsjCCChnHEryAuCFolR7+1ly1JLcMOclH9SB05f7t7AihOa0AmGZj9mzku+ddjp
	 SMb1G4qnRM6Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D329C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167375948740.6069.5321359812316725352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1246228c80810a29c25557cec810631f5014969d062acc2a8c29a759d5deb544
Date: Sun, 15 Jan 2023 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673759487
