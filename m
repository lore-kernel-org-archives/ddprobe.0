Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74477125CB
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 23:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E082BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 23:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690239728;
	bh=9YfcAmPzwpuKWDURBzeXZ3b0wXZwfUoaBKC7kyjAYbs=;
	h=To:Subject:From:Date:From;
	b=ejM2Rnbgzb8oTMQvwyYSIE+LymhkF+a+K+sYdtXi/mq1INDaiKbj7Al+6xs2klULf
	 qFws/xMgenhnfMtkCXZCRO++9CT/xl7ogzUoDgHtK3rew2Tb1JSPXO9d7ylWpQ2xjl
	 NYQcso+1wRD9NeCDjQxjqrLKrGYa1m/APCqQ5p5EMNLXYCvC5fsPECjxAGics2dxba
	 D67HjZNMILq1e6sFH+QFMxDDF4dq+R6FXDIgEEOQGf9ToPhDceHYdKj7MU8gU/HYsW
	 0CqaII/ov40cqULnhS8N4ZfHO2WPgldjuN3f3Da8UeT0UGaHka376W0Lh8biwAHBuG
	 rSFYd2s3jOO7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9A8EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 23:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169023972876.11243.14279941846042490488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051a63226a32849b822427dae7b3975b5f6d0c519d4dd1e4be55f02b8161cb7a
Date: Mon, 24 Jul 2023 23:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690239728
