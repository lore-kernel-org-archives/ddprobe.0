Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9788478
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 16:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8CCC433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 16:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693154648;
	bh=Aq/nTDPYdxLtUIu4haQFECgNaXvRJ7LXdU+jYXANKLc=;
	h=To:Subject:From:Date:From;
	b=ddH+0DOya7FLZaxYwNJw35nA7rVap0CPdzKtfGSBXxEE42KRm7GpVG+/4uMDheCbK
	 napZnX5rO413OskkusWN+gxxsMlq3fL7U1cvPW4N4FM4D4K8Dt4CmqNDRXQ18prleK
	 nzFpkqVn1s+dAs1w3xNziE3jq/vD5TY5b6E+NAfHq1ZLNAAQkhFh6OX/lIRa/1DKVM
	 T45htp457vaO3tmVhYC4KrPEk9IgjSc9EdPEAzXa/mNcnElez3P9dvX/gp3fbvvv4s
	 XKfFE60mFgttJr/GdTE971sm155uFkYBt18dMqeHpI9MEuTYRZeNOTTIJHd08sE8JU
	 9WZKfI8tCkIwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10A2C83F11
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 16:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169315464871.325.7486821498949407918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d197eb66e7a6f2dd4d415251ed64acea7122e8ccd7e2f9b4d4d26938c42e3a
Date: Sun, 27 Aug 2023 16:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693154648
