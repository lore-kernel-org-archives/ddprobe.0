Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4254963DD
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 11:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E173FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 11:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681732685;
	bh=BgMo0VAgtsGBCzucotUQRF0vdASUCc9T2VQ5zRLaHZQ=;
	h=To:Subject:From:Date:From;
	b=MaJ/wmc4ynuu3J2+lfApn6fA4yzVcR4uxMg5wv6c45XKhSrDZ7yAvNKsJTN1V5hRn
	 ctYyCwugQ9lt8gJmQDVSGOBnhJNuiLcjTDp4wEmZMXFCF4f7wHFSRkvQ2XQr4BGFSe
	 0WhUzCZMXQMAfeVg+e4+lqO0TXeSfwd5DguI8FSvdIYH62bi6RRZKo8apNlhieegYy
	 5VxlJpuyW3fV3NCMilNOVx3Fd+6j1d+E+WechsoYGCnLXEaCpSTUvo8N1+GMrifw4c
	 FqsWrVLiA97dsdeSQ7M5Iwgw3LiPpU80pX+R+oeI6qYIaa7JFz/f03NFvviSuYvq+x
	 4g/CmaaY94Aag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F0EC77B77
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 11:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168173268577.29211.3293957600725765745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4c86cb4c2424071cb7caeb19cfa21281b29150c6c0ec37af5c247652518ae0
Date: Mon, 17 Apr 2023 11:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681732685
