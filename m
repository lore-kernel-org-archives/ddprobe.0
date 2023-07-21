Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8FB363
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 01:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1255C433CC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 01:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689903728;
	bh=1fzwHsLRHGEjOquVIxom8DqayTEApQ9bdfmWmVzAmE8=;
	h=To:Subject:From:Date:From;
	b=YHs62c1G/3VRFjW1F+98+FuPcNJJ9jq5Ri4avrikECZ8M0QaHEOp4eb9tAcSHhxNK
	 6Q8AWukR2Kn/ECRchIgk0pA6B1CLsxsK+TDJhGHxIa15LX/5C2Cr70p134IV7n6x9v
	 DmoDtW7BHEeubPv5gdFERJ2uphHJFdIP0aMQgmmpGTAopIsV8jrYoPE2d+5w1qOsyD
	 66Q5zjEHTLhMKT4fkJqgjse/5UdnkshQbb6yV+KSjwZgHJ4hL6Vq3ejRlIjx4rX2UQ
	 FWzkeeI41wvmrm2R982xbBRz4ng94YQU6IWVKZBwVK52bvqNzrAfF6m/q/PmmWm4ue
	 UN4gxaqrZGCCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7819EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 01:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168990372867.31869.505726192729962871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7f704f70594758b160a587c3cbfe4c7828cef6c47793cf08a6d59f3138658b
Date: Fri, 21 Jul 2023 01:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689903728
