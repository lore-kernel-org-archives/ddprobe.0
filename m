Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB93E3209
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8FDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672510287;
	bh=NKPeIzBDmvKDjnaMYnfDtQBwoeQBlLad7mRvG1fGf6c=;
	h=To:Subject:From:Date:From;
	b=Et6Y+M2BTfmP5hcdyGHkS3+r12Pc0/qRPpIBDkNXJeTPu+eBSkPu9shV9sNndoKY9
	 cOukGYfFSV//AaxTVn7V3HgibciYVoQjvvxmkLKFknzYqg805C9GxdV9j3d+F9wG6F
	 2h57zwqRTcsaRvTFe5sQuoVzD/p8qjxrhHXdmTKIZ09K+f/lQwdcE55vJ7DBitS4V2
	 rOng1G6EBz6QMtn2FY6UG8Gm+HWs8JYTBqlJ6J3JdGCHvGyG7NaO4taiWhXVkHloQH
	 RWz9dMIy8qGx1DQEt1N1VmX6Nb7prcO7B7xZyUGISU1lt8tx4lYnnQGif24eB47XR7
	 /boZzz6oIprZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61275C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167251028737.21717.5031245403774926665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1456a05599b43cccfc19ed5c5e5395c7c61fdf0aa2f11f20d70f054ac711320c
Date: Sat, 31 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672510287
