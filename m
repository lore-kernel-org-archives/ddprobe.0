Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E626105
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF2FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663596653;
	bh=fLpdZd44wM5xyyjLgw8I9PbSIaNTbkoo+4Tu9Amuros=;
	h=To:Subject:From:Date:From;
	b=dGAi7VQyA8b3LSQxPoD0NMuzp8NcWKIpl9wfuxoKQIIo6hC/mmoep9NuAPx6r4VP5
	 b0dkbWDWBEZG5WkS7uYO13v48Gq9fy2gUeyQnLdW+o3a4bFYwL6iIDa0kdQwZ6xUkW
	 qWl2YxIwHfyRK73+Ke3GbIrRQ/Gx4P+qWmN1jW1cDDc+W+/m9q+wpe6/G7qWTcOvZj
	 xm8JScV8CCjnxRjx2TWOlnwXQ8N8mO/XR0+u+7r0gqVi/fVQvcS+09nxIrZCIXR6dm
	 w595BCVcImqBDMKboTpfXmryqdTe/siBW5eAW+sla7bbBkSBOP6I70AAXiZb9JSElD
	 b9BvTyaINHvPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EAB8C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166359665331.565.9484426014033635041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f75baa557e8c49cbdfd44a99d26ceb733c4425a4854e9f5021b1f778bf6e07
Date: Mon, 19 Sep 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663596653
