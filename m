Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79CC213AD8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 14:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D66C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 14:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690552928;
	bh=SnFUsk7jnV4K+SPAAkAmLTv2HrqmfFZAUBUSO8q2c+Q=;
	h=To:Subject:From:Date:From;
	b=BJIq8+B49zo4TCjS2Ci3C3WrdSR79drMXpkS+geeUaTLraTW8Wvu3AA/Frm/FzEPA
	 FEKy7bF7sb7lXpRcpnlajvCh/IcaKLBvQ84o3xEqpXBy4ZD7dW68kCcgLKbixnXv7U
	 nACA2gPhZewIUx6bgYv1x3rfxkYLwtJTXp6awkzCaxhdqzqH8GCTK3EYaqnGJOHupS
	 6A8RqqRNNrzHuBvu7tQ4WDOfLZrpYTAlPtBHcRrqoylngunySMXdspkLSe0/FmOeRL
	 luA0NkFKZoTiu3KKukCOmwqCTIYpmEOxelBogtxWXz0HDLciXNZy7j5CV/EafyUfG6
	 UvzdkmkuCpQnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA406C001DF
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 14:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169055292868.26341.1464413481456631598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e696e3d4fd9ac9c7a71d23c416fb20ea067d5f128bc6e4698ad0f67cded0c53
Date: Fri, 28 Jul 2023 14:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690552928
