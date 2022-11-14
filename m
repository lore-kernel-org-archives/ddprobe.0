Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8FF8470
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8C9C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668453654;
	bh=FrLX8x5FOzCljDY+wyMujH07yGqNt0VB6GwovCuhigM=;
	h=To:Subject:From:Date:From;
	b=L4xmJiZKEUMZY7W9qivxmlOJg5rafqLla0YpXBUPU4lR3sXu8xOiuzi2rn0qVUl0c
	 sfn2Agoni/bsmJ4SQ4LMP0xwZuEzG+ruJm3Q0+R/hqkecCoM85AofbxfL6ylEQ+EcV
	 LHYKhIn26/Qmx6CMbep5o2ZrhtMqpf0ceNFqiHO/hdbl/AqWPUpIas/a6BbRMpxEcN
	 6so8wnokh/tVpQQyiOCcE79Vobpv0kE+4VCRdooj8yn4h+cA88E3HCWfi2vylMpJp+
	 bc4fz8udO3I2jvdXVSxOpZUaHWqvdL2jCPZETl4vhl+N1mX/J3jp96NQHuC/kfsnMW
	 eeTqdBUFcslxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558B3C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166845365434.11581.17845553852506046424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf59e379a10668e7602813ec6c81f487106ad72fe6f15ba7fb6cbdaa5b5f9fa
Date: Mon, 14 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668453654
