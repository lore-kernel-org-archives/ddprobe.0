Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C082423CE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D0FAC433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667977854;
	bh=vhUqIsmMcr0N1cjmehb9XbSQyZiIJqr0rWlpexkMF64=;
	h=To:Subject:From:Date:From;
	b=Y/Vb3CHZzoNigWRbPXtmS4JLY739mRwDkznY98ylnIoO77AoXPF2YQRzVj1qNY4oa
	 Qknmk2p2RoVW3zG4u8IqEJPqcer6dvWWt/eYjjzL69tSb2jWbNH5auFusquclkK96L
	 9+SdCLOeXPYnSstnv9ukhA1FBlairMOj5bXKuD4nibDuMtxDfvXDI4J8HvyKMvRDEf
	 j6W7q+AMR/8/XhuOs8T1DO9hKDtN1bMDx9a3yERWQiwCCWEzlMNIYE+XuE9wcQe204
	 1m5ZSDx1neNA5ryQViwuJoGCM+0HAZmzKdg/3svuBdrT4d9F+g2RwGawgTdbIFZSgT
	 BbXCwHKPRiWwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548E5C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166797785433.20027.1592621998518520207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a06f84bd91838c9153a0e215f75a09b73eaf3f40c9655a4260183986f3f34b
Date: Wed, 09 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667977854
