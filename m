Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55083A5D
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 09:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6505C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 09:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679822525;
	bh=IXYCJPQWVY30eaNMdNcoxQzEaPO+lNn5WXngfI6V0uw=;
	h=To:Subject:From:Date:From;
	b=VvjEStMRxygUjWIT0r+kfxEz/aR1XPpCivLd0TnVVTx9oNWB+osrpSv3Ov6aJ+ier
	 JxzG+PQvffFP9CzeV3A5nXZ1GPllWmu+qEJjoLzRRetK1bdi6W7i6LfJ4lI/0ixEBT
	 UZWcoY0Q/lt1e+dODtE47mjGRcyUih5cNeDmxoqmEGfQRgB9if7XQyoeRGt8nICqjz
	 h363zjHBVd3ALBf84HJDOKYtVAVT5p5I98FoWJ4mOJNq9hCOP5OrX4jEXB9IvzdfQS
	 Nj0qWF/yo30dXTgTHOLNZk8y25zg0a2ghJaXhKGv3QWpvh0jjUKdg9NfRLBDV/1fIY
	 nITX+Gonx3/JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE47BC74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 09:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167982252576.32080.14345351300663200098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80859ebab7ee45f206217b1d7d5e883afa2eed8728f3e169063ddc0d86fece9b
Date: Sun, 26 Mar 2023 09:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679822525
