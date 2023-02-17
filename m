Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36622361
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 01:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4B6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 01:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676598185;
	bh=6ertR+xikTmHiAXcvBuHsN+vZz67dM+KbQXyESXt7iA=;
	h=To:Subject:From:Date:From;
	b=DlTMC/Ke2IoFSro1hZ3x5KScUiWMzpF5Wsk8DGG9YkcW5H8kxlemqAXz03dZqESO3
	 asfl7UaZimlqcabCmcXqjhJKDA9B4UPmpReSj+XBtVBkJX/8K2h+GmF194TtYgarlD
	 TnphYhKt5WMbPwQ7Afqy0sqs/+T8C5Ek8Morlu3LE4bz6IbYP2Zb5ReBnkYp/BpzCw
	 qoBE2RAKIUoPiUVgSbzvOIE8NTCtZspAUOFrlDOhSIKekwNotcbQHyPuiFlqgg2GCG
	 FDxn9zfTFgw58kAn6d2eEf6i5jLZYH1QbsTIw5anhWupYMHH1mXCut7iFqJBWQpyPF
	 JCRcHyABHoDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2265C636CC
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 01:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167659818572.29197.3336659206427841063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b6ff879fdea472e8c8e1df62f2044202c1bfa6a74ec873fe2e68a7dd38239c
Date: Fri, 17 Feb 2023 01:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676598185
