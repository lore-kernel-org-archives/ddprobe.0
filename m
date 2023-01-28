Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BFC193
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9BB1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674866585;
	bh=1BHGipGp0RCNkrdWtNQ+woWxxauvIyKshgstYxU94yM=;
	h=To:Subject:From:Date:From;
	b=HlEZMDyYRcmMH1iD1Mf/PX2jR2HgSHktGsuKOx/KKHKRgQubfCw+cg0ktAMgYlZp9
	 6MGz9QlomrnS2ihfLcplJQ7ZdVJSwqVEZa9nLkCijnwXIBtW/j/LJ6eGGjpugfi6qL
	 oiUIHfxQoVNacZtZjAX59cmd/RVQSBq8VAqOoXzCqOBZ0LKjz+YUulnmEsUrE6ei5b
	 dfzBjYtGYyY/GBw/QC/keXRs6TK+85qVVob6KlJtRsuMNrAM/3us7w5SyI6vP3uLp2
	 y7nCY1yB3nUs4x6q1n0c1CYopOdTonvqFdKHc+uTjYwXEeOkBfd8LDdGjuHSMTYQIA
	 qQs0GPGFgpzSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD12C54EAA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167486658582.8866.8240955642165323975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e822014d85f7bf5ba78404eb27b30ccd27eccbc199fbf17c361189db92ca9710
Date: Sat, 28 Jan 2023 00:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674866585
