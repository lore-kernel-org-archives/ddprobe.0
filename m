Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A99042BF5
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 21:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tql808r5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8147C433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 21:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696888628;
	bh=BCk0tlL0JK0Oimj4PtMcrXCH/l8Rfp7oo/AIhqo4MG8=;
	h=To:Subject:From:Date:From;
	b=tql808r5AR1puUcRcPe7UeDcKqECCjL5QSuJGU/7ZFsOW0rSG+ValuR9gKV6dW2nG
	 DxsgRtSSvAfrYBNfJpxNj/CurjCN35tb6uaVfv7EWCVa0JKzdlqkveLWdpV/XAkF8a
	 J7DTSeVUvQzhHprVvOlNXmkZNmWxlwRz/QDw1ZzqCQkTQoCTwvcs0ACGtYpN+SIZN+
	 Y4k06Q+O4NcyMTalmbwHiJ2QB6LG1DxDNTqoj45/48fQNAOQRLy504WHlVjHQzDa7V
	 I0EX0YT/2o6IDXOT2CF5yz8V5s6Gteb6jyQPcU4Torwv3KxemqEd7yvFdlHErIhO4J
	 6Ls15wT+uAkqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EE9CD613C
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 21:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169688862867.9177.16239290833886592950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e4acfc3840f976121fc204983ed91d3d0e34a5f61f51db6854c04d1cc8dc60
Date: Mon, 09 Oct 2023 21:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696888628
