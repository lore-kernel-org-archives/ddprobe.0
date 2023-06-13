Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9442C7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 03:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FC4C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 03:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686628565;
	bh=4ONCbKXIHzYmiy4a/Is1yYNyFQXdbW9ea6ZMmjeXXrE=;
	h=To:Subject:From:Date:From;
	b=P2L1egclS4r0Z0ESegh8e2GotPom26o+cJF672WP3la7nnJYYPjucg4Mh/wVpf84d
	 eRFvB1PbQUhqNLucb6LQoabs2BwjPovmdGfUxZRBWPgz68E8TGveuKnRxAa2gDujxh
	 PrtdDF2uJEV5xMBudAMeSXP2CDPjd2aIS9ROgJpDBOs3zDFTu2KufPmgQ1PHfhxRWM
	 bLNdrRZxc8b4I+FPtPcFO9DVvidhUIquO8lC58VsfvtWBK+FBNGlxw+X6lc7X2RNvn
	 Jc6nPF1x80Boe5yck5Sj/zcsZpONo9dcxR9o3hruVNK+SeG7kY745eN0pZUe55MWQ3
	 3VYfjcFrPLB+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA434C7EE2E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 03:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168662856575.8336.4701034733048251682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17fe4fb4f930aaba12276d038482ce6ebbd4cc55968213b3f135ed23dc181b1b
Date: Tue, 13 Jun 2023 03:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686628565
