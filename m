Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2C1171B0
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 11:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F4EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 11:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689075428;
	bh=KR6NXvzS347Eh8tAodZiftDTZjQPoO0tLr2UOjggxGA=;
	h=To:Subject:From:Date:From;
	b=bj5R7x7XcsmpNpv60s2m0vPxO70yFWBLYa6Na0rop9U+q0vncspWnDXragpSF9Vpb
	 iQ79uHbH3IXXS0tOYVIk7vaftOUppyfCsQ2YHSOvitz7hZneSCWdrod3SbdCjWp3Gj
	 HyAA0FEvvwwmofKQCiD4uAhYL23b5MWbXg1FW5NPHlA0yCQ80KavuR8wnmvf0nYVHx
	 gfvOtBN9qXKaLiK9WFxP8VRT5deoY8dJHA2q8/oDr48blAkaK7BHBSWeJTRMo/LRlk
	 GeHUuyqLJS2hOLzAZcWA7j5Nv+qX91bppU6KfE3R5p1v+kNIAKqW8V47hGdfLrDSuH
	 yyKj56oovYM4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEFCEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 11:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168907542866.19636.1519414945768502963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7078a6a886feb4d0076cdc06e007aa65423ecea8b43184b41bc67a63798b4d95
Date: Tue, 11 Jul 2023 11:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689075428
