Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F1B36E
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 05:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FBCC4339C
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 05:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675056785;
	bh=UXP/dYZPt3FNmXRynuKW83rIMoliSXNlISzwLKD4zYU=;
	h=To:Subject:From:Date:From;
	b=RX2u2nBfClUi8JeBvfGCNiJ2GAKkntGETP6Ib5ZKw+5Dd7TR6t40qDabXXx0q4Kxy
	 KqOzt0l3On+E7yWpF9MvmZXK5erSlCnY55szsX2GC884FKGkjwMbgVnqVrxeG5IWtd
	 kfVNqViUbcZeZcrL4crs3QPc18DupwJNCfKBZlR+xJseUaVa1VYKsa4lBEOTU50G18
	 uJbcCpX2AScRlM0Qj9ztLM+o7jcbZb56yb0HhT0ZL6Q8P13Qlah0HcSSLqJ/qoSJ6J
	 DkL9shN58pTvkU3lZ7O9sNvhWUNDu4NhDhc/UkLzjDjxBMc8IFdt6UgJc261UdvoYT
	 R5u8lnLExinUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7B6C54EAA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 05:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167505678576.9784.7954416134502353561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2125509012e5726a43527d63d7a5803fded6eb920706689f670f1455e73c610e
Date: Mon, 30 Jan 2023 05:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675056785
