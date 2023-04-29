Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA9828EE
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 09:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06C7FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 09:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682760306;
	bh=FNkeE+gpYC1o5vsA6pORakCR//pN0bKindoMwj+U8sY=;
	h=To:Subject:From:Date:From;
	b=kHXswim3CLruHDrr0nmtbIDd0FH2r7pYXS2dR7IB9RNODu2wAPTt4lC+BD8qENDjy
	 1TFNpaiEodnOEjxDYXk029px06s+yZx+IRLQnN0fuPaMAIad2yqUH7VRZs1gxdGrWW
	 /EEx/RcCBackrM2HH6whbNXW415WA5krEfrTud3wrYAtW90nw0FLVNtvDKvCAXQI4W
	 bBK7t1VyEpuGYfegwt9/406qQAw0Lp/0ZMnq5OjJxMeZ+AI4yI4tv3nOCpCuiMg8Z2
	 zvDJonauZfLq6/V9WycJC+iezzj5wv1kAnhnDH189sOYiN1fDZdsyM8lEW8R/o7jLQ
	 AZukNSpt5ZhaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2D55C77B7E
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 09:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168276030583.1037.12009076037879410209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b666a77336a8c466172b22cff6ed6d860ca07c52ca06cd8e97ebeb6504df1356
Date: Sat, 29 Apr 2023 09:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682760305
