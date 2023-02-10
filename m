Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377BC7E2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 03:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2749C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 03:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675999385;
	bh=Zuefc+nVuGXhJXXb7esPxxYE6fqmh26THiEtHhQC6cQ=;
	h=To:Subject:From:Date:From;
	b=WPWDPq6kqx9SJIXrWkdHczDwLT2IRhKR33CwzRQ3iV7Vv0lVPH8wFTICyOK+l8o4K
	 cBKymnp9oHImhWRA/9GyqDzPIHduvh+2p70zbrX61T28VK+7dHHTOTqLqvS/8Nx7+f
	 5G+aXUfcfN3UIMbyE2ROzudkuUTeiU54BCysZ7HBgGlMODbdTLe3SFG95U6r+PGav/
	 Om6mX8fyc/lbMdkVt+3izE3sdZlSZFHX5A0yzyK7gkBCgtwGfasCfM/W1VJE9Wkc6u
	 Tc0aaZmeIggJydZY1QnscjzGJyok/yMYWtQR9THNdNfe8oz/i2ycSRSwG5COtre4R6
	 /v0l8N1QNztZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD4A6C636CD
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 03:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167599938576.29729.14643865875960584082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd765a1a019850377f8b1655c538969d2dc86bafdd4fa8e0d8fab911ef876bd
Date: Fri, 10 Feb 2023 03:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675999385
