Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A512564
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 818ADC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673249487;
	bh=yUp4qmwcGnsZek45Ou2L6k5qTrahrfRNqNEi2daavpg=;
	h=To:Subject:From:Date:From;
	b=ErHvc7OMUuITPB2TCVVOT4lDgbQvGlMFbIoR/2yCV60L74RQc1hfedIRw8BnX+MQb
	 60jI6aduFlqhZW+oreQ+GdqqlTi6mjr4XwhVigEZxWxOa1oqSHfRcOlm6xOcph8lyB
	 gnM89c9SgoH4c+8Qz5EIqEYorq+aJsZenJS2YMZUtpP82qwzINC3amt10yD/Lc9AsA
	 DzAzcXe0iJe/OwburAA/psQHDIFbWg6tk9d2SSxXPiEyRUCVcU1a7n7n4ZQympo6qK
	 NpmJKXBzeqChX2t36ufWdjIXZm/gkkXvxGStv8+8cpLTUivqE5qRPtLBbTM8MHJ/0S
	 uRb7zKVof3ZRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65669C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167324948740.9349.6736911581214781953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d703e18cd4e7e008b094948819e702cbb7d12c20df83db7ffe7a7103c14e518
Date: Mon, 09 Jan 2023 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673249487
