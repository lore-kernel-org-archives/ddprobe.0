Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5142C100CA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 18:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C459CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 18:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687543388;
	bh=12r83nuEpoYvoimWuYHgtJdoHgYK31gWoShAilTSFLY=;
	h=To:Subject:From:Date:From;
	b=XOEqHJoDLQGRcQJIaucE5sBgYN43QljVgMt2Wj7UXzQNRzFYJilcnqonerV0RUwc9
	 3lrAsNx6snFHnYRNKktqdnDGKlJkIHeLodXDuU7UgyW14c1Gttl/fSsJQyVeLU3gJu
	 JRdFS66yt9I+p/a8L8JtuTH3IIx/AtjKKF+LTNTVX9yNgcqAq0Iy7bAw+Fa1w3DbeU
	 v/+olHNrYH7guh0Ml0ZdDv1hH6K2PrSO1ZiJTI2IJIKA4hcBiiDGH0dqaBHKRjzrQz
	 eKiv9RHI8Cu5w7VRqsUjOz/ozA9xrRpg2t7LDJQQiWIRsaN+01j0mCHWJ3eFSUs6DN
	 A12pc6Ff94v7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77C0EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 18:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168754338867.7840.5688849649037914902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5f5a5f57bde18be4ef081813a5d87614fa8b22760ae0bbb538c98f25ceca3f
Date: Fri, 23 Jun 2023 18:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687543388
