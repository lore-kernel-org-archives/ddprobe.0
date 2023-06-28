Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7EC322E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 16:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A87C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 16:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687970588;
	bh=3p5sQAlnwuUcqFmuBRUO+vmNi1C1Ac58htkpNXnFu+8=;
	h=To:Subject:From:Date:From;
	b=AG4WWjVCWSPQD/mrVz29i3C6twLxWFx5ojs65H150Bhp+0U02sEOFjofS7LYHJPaA
	 Xf8/NXAd133ryHLpS7+0kqCoKVtjL/dMA4c8nt1TvqG7MSRtmDuxx2ii0j5I2tmKDL
	 1yoro5+mcS69wjQXqxRvhybkZF2E7PRoOafYdNvbm/GNr4wMpVgmwg2iKC8JtBEbuJ
	 n2S99upxnoMDs2IMzSboLfKIjaHL6PIHbmIhi7m9YwF73vU48MDP1Cz5FxBhfUer9G
	 OI01GrBN7KR0FDRE4LjPzrDLIQRuDCapMAjSsFnH39YbP6fHG/STuc7acRRa6oG1EA
	 RcfV9vl3QW1aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85B9EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 16:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168797058867.25693.17260816964221730156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096f9fb760f91278e855d038b18dd111cef11c7760144759d393bd396cac9beb
Date: Wed, 28 Jun 2023 16:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687970588
