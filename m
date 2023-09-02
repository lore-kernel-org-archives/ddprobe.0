Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B3815A5
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 00:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F4BC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 00:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693616048;
	bh=CrkAqlZy22410cTmUeWOm20fRMDqYGHa56WFQ8N6ecY=;
	h=To:Subject:From:Date:From;
	b=KaUyMSYzy8B4YTwn8CxHPfIMP7TsM8LQSrZYb5NO2fMkhim2Kd/wLwgGXnWNL+Q4X
	 x9ausABOgaTm8AD0h2b0N4HA13XiAQLdBicVFO3nDIQDOhUqalJTujtbwQ4eUbWLkc
	 4MZTdgnMqlIq0o43QzcKb2dg/U5kFzc0FAArlrS/QaLrTxrt8d+drLMOoja0Qipo/2
	 aVQ9jtVgw9kGkmJy5vHuWRCnzJzBfasQmZtjinnDrWTfb+ynf5V5S/3tfZInkRgtbk
	 tXObzWnAb6bW6cl3azY+NCCm/sTK17dxNOeudLi8iM5nNdLaX7bKM026isxLt+1ddM
	 cmeKGr7JpMj6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC241CA0FF8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 00:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169361604867.10977.650964240331839886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590fff2cd20e0313715bf91ec949f58b93f1e8c99171cfb864c16afb98d9c805
Date: Sat, 02 Sep 2023 00:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693616048
