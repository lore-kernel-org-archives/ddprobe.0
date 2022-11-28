Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E8DA48B
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E5EC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669668054;
	bh=f9v/F6fFzSn8nf/VrUfljx+BFleljRocPtadmOzyPAM=;
	h=To:Subject:From:Date:From;
	b=bfMITQVXwh1GPPNU6osqp4pVK1/+0LuHC2ZURmLTd4mVPenS4+10xnm45LXd7d3Gw
	 5dKvVIJXHP4ahLnzHNQ8vBcgwD/A/15TeUoEWXlK/YcpjUU2T84o655uYZkqNAKXaX
	 YERvF57QLJgkdm7fQOhQGxUHWk4N1tBhlGhRcCnSb6+ymLyXqpbl1cDXgpXJPNiovg
	 aeXOJtsT29YMC71KWKuU8lRAccO6dchcC7Cw2llHHb5D12BskplfmW6vAhYCWK6Bbw
	 1sM/zKlSRK6VvfSA53ktGmzovM9im66UH4TvE36uiYo+VgBgiRTjDyJikVptm55tna
	 CEZMxIrApZwTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C31AC4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166966805436.26846.7300136231516764238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 824c55c0937551cf28a4a96ef315e7c4c0e7784ae492330c40fa0ad5209349a2
Date: Mon, 28 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669668054
