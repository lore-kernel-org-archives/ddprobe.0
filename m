Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD4615AC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F79DC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670902887;
	bh=LFSYzrMdClWcahZyEtzNFZFiqtMYeFgm+5ECVsRawcA=;
	h=To:Subject:From:Date:From;
	b=PbABJzwJmx5cyjlXcX8MsOi0TFoyNdHSJ7giJ9kb0RFOWfd9U40zHTmJoLj61DiID
	 pVXnEn6ZpWgPK/EcL2tKUlyUHuohEfrwyEC9+n29XrTtBhOdn3WOgxYvmyF81lRWP0
	 iR3RUTTOmc66iuuh0tDdR0QXZ70xmUtx7pbF/3AXCTqPMRUiRVaUwtm4gXMCnBLZ6g
	 IQrgktg22KYuK+6Wj24XxlDI3i3lSDAj8MZEwpLlti64vQgWu4J7YVjhjD6ocOYzEV
	 ZLHQRZdaMitZNkCR8/GXZo3C1iAVkPB+1Ai0nzb9qx+wwMjwcD0r3LJiObcyuhxdp+
	 KGukobwRuI10g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D3BCC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167090288744.3505.11420424181669290039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1a6765c39e186d30b7f9ac030e5ea8c821781cc92647ac25eb1d1b1164c3f7
Date: Tue, 13 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670902887
