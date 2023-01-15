Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01ADA3C
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 867B6C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673794887;
	bh=+a1+2CB7TLZ8R6YIJns+YslplWTvSBhcltBKdyDziKo=;
	h=To:Subject:From:Date:From;
	b=iWyT9O5fmR2wrwuCqymaK1oUY5SgNSijL3SiWT347PyW9x59JOiVPVMJOnhPNOLsl
	 tNIRcMQ7XM7P+Hat+rWitSy3uRj6kveaX7qcquQE2B2oBZ7RbNUvQLwSsAETR3ZHtb
	 M4BqJYtFtFSlEYlW7epsQ0d3baFtYzGPf7UNa+jDiJLpub2Qr6Bdz5I9EtPmHASpOk
	 PLXxbR+nnBUGkPa1xWQfyFfXzW4aRPbPs4yqNYWpaux14VyppJ50OZKSCHXX8hmEcw
	 77y3E+wJXn31nKgc3oR+5rFKCzXPmNsXGGdaMe54QFQqqOWGkxrXEwXgiLdTCedvs/
	 gwRf52gPoScGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669CDC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167379488739.13219.12153297236921813115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfe2b44a4c61473acabf2e194ae99d0a19dc774f7240c85e8612baf8fcd1d1b
Date: Sun, 15 Jan 2023 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673794887
