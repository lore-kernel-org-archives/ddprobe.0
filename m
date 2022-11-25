Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B245A33DC
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A071C4314B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669386054;
	bh=0OLIRBUEUnQTSZvawjYINu+uXFxnnGQsw9rmUe9+NTs=;
	h=To:Subject:From:Date:From;
	b=l7As+N5wHVX01Qj1kYw+25cZ2uynCLQkbLM3LRHDhYPLTzXjv894xarM9QMhgolnB
	 mjD1suSPpYgX4INz5JqD6sfWlxsdptTn6xDmzRhJFJycl4t2Kryw3wA3YGkmNZqOwk
	 cLdMFIjFrghU1AUqIOW6b3OY2hRtxl0I/AS9Cwpe1pvF+lqhN5rg1hCels4I+IKENK
	 vdRsWea9/NbtroYmsb6SgOWOrQmXtPunwKmCEaLVX7GxO6S6Wavjm+VEepi60VZvlE
	 VOcKk+CYgKPjznQqxF7aeBAiw4rLZL/V4DyQXW98x/Nm0DYIrnSOKFI3Q1ovHziBw1
	 mOiGHBKmxWIAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B66C43217
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166938605433.17263.11928543039202672181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4398129f8f0d60002911b2778f7a86b41b0b2f502e872790b7245d1cb5fae72f
Date: Fri, 25 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669386054
