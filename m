Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19E77C
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB52C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667374854;
	bh=fJkoARjZaTQBdXF9KSFLhCnu6aTcqr0OvgfC7jfciYA=;
	h=To:Subject:From:Date:From;
	b=bypWBZQ/hP4hP4+5YfanehFVHCOIa2JqNoLfq8nYIoq4gy3oU6oIgRa+zRifUkBpu
	 Am0Q+1b/toAtMM2qOvnoVQzCjjewsoLekA/CBrcdc7GXN3fV4fnq1ph/hEyzzHWvdk
	 lgz92fQpCPHvw+HTg+U4ukDCu0aKfQzmwYTxB1aSN7jduUGXaaBXcgFSUriM1Y+f1M
	 RYYYBmd6HR5w8wrtqAEL9POMD6eVtsnjRqg6WpGQxBURK5wfKyJLNMKAmTQTtx+NzB
	 bbFFlH2BJ5nzVOsg2SOghIndhM0VKYXU33b9n19xyJ+mAJn7mLFvAp0vBC+4G5xrbo
	 5ywf7RWKkscwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C86C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166737485432.19693.14961857107404428450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50417348bc5dfa6e1d80564cc5157fd94e035700fb06155da91802142cac4491
Date: Wed, 02 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667374854
