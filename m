Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4533F371
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 09:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA687C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 09:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675933266;
	bh=a0uLsw6YnlnOtxaGcbfWfmLTvyOpWio7mQA0f/rD+8o=;
	h=To:Subject:From:Date:From;
	b=QGZ1RmyjcElws3K2IAHuZjvOweOpOkoMpyj4iWy3xCcIC8rx6IUAlrer+sbsn4Z8g
	 ZCqTbpf/zo8uMquImyImbBwuGe071S5dz2rb07Wh5DWLn3og5x6kqRpdOBvPoC6RI1
	 XsDUIQGeUB04Zfn/jHo2bKC85I3JJV3keuuw37oaYRzPN1rTUgoT8dwW/EJRTYNOLU
	 sKom2Uar9+FVPmW2iA7BZGNya2pUm+gjrus0yacZiqxrv86ZVfPLBOiS79hXBsanT6
	 IbxHmB6n2WB+0Wjndocx7gha1oitwz8u1hOyXh1pjajTSIuvp08d2YdDn9Au+LsitT
	 27frcKBApjLSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DDDC05027
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 09:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167593326578.23450.15516931697236693123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2588408e5fa405b65f37687ad5def452ee1c42fcbaad6d44d814b4b3bc3f07
Date: Thu, 09 Feb 2023 09:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675933265
