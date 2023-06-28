Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E1B322E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 17:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16B5C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 17:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687973588;
	bh=awZcnHeoSBqqzFKPXiy6ibnH5CHLVkJKrujT6b7houM=;
	h=To:Subject:From:Date:From;
	b=NZaShBB7Gr5lqVPdAo1Ol7xeTOqrfc3tnfnMpMNWAFFQkszSX7hkZG7dkz+lSyqCB
	 /w9PcdWW/6CGO65cQFdFTiNG+N0nwqgzY8HKW1RVhS9SR8ipeKn3FaaxbHL2umaoFM
	 DFcZKgChs7KPr+EdBDpfN8S9J7wRutCz5vp4mUQm4tJndilktWH7fyCe3/NFRTX8ub
	 v/owKJp89/ARojehIW+vJPf5+geO1vXpyxGrIANvOO4YHThXw66R33lVm56O5sPNUS
	 aBE+jYzoQumvVKYa0A9Zu4FRSFfOIPJFd4tfoUzw6eYQ0S0aZrSJGIfxXQtXTy1IFE
	 battU7WiTmsog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9366EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 17:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168797358868.30140.7544178037885551381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f3eb1e95513d5e644a42586b55e2a6a6d29778509c872512049d1ef1aa5782
Date: Wed, 28 Jun 2023 17:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687973588
