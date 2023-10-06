Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F73D4414
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 06:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saRkdcxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2793C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 06:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696572428;
	bh=1dzxBQY3p/87BE5vJMFGfe8whfG+NQ+7lHdtkWb4lhc=;
	h=To:Subject:From:Date:From;
	b=saRkdcxsnQwwsUCY5udNKKtRKpRntnj0p+LKlfOXcKGNZqWWwtBTv74XFQ/zd5UHl
	 W0PSXNAGK2fpfZP+2bIYWF1BBCGAPaxRT/zniYz8+VI1r1LHlp9HaOUHMYnHeZ0Aow
	 zQw28VLIjsK1soVVNPAWn4vaNlpfYTnz5tjNxT1YjWvuC1O8UvK3ueb9s3UrbjUErB
	 6W98LwPNcDpKXG0PMJWmW3AaudHOx8j1aW9ZZhbeYV1bpSWWin36HiKHT818ACnYk6
	 /dJibaTtuiW/9jVXpeEE3VCJo7vbbsi82UEcPfRwFJvfpsU4W0Yg+ft6G13/e85++V
	 2q8w8XJ2rSKqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF002E92FE4
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 06:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169657242870.2627.14832200540986182345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5452316d30b7a73b8cc7e6044aaca3cf6745acb56325f4321b03dcd3e4b2f8
Date: Fri, 06 Oct 2023 06:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696572428
