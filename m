Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6343017E2
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 04:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05F2EC433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 04:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676522946;
	bh=GlAaA0vHi3jGdflgLSkkI7hHIMCVxr4+NTC2lINjk7I=;
	h=To:Subject:From:Date:From;
	b=lNssxXAj8Qr82Gyxy2sRGR/Nx5bwdArwAK5SKVrnkZDvLAObxfoFeVU1gq2X4sJQQ
	 4aSTpFzKVgwllHSJ7dLDl7Trr9zarePHLgU+8LLhLnbIMfXZnbLONg2I6Od5bDTZad
	 cfxmeJP6CZzKkv1QzOXSZKdjKT+dsA1IQ7l9EPp645yrMmtn8o3drsSBftFyvI2nFy
	 ShntlyryNr2IQjBiI0XmCOukG+02FQzGcqumPVsTI7zHHqk1W+7CGg1xptGdWd7/z2
	 uDLhYSIh9HT+M6gGF0MkRKD0UB39a4WsSlyZ0+e1btXIQ3VPOD2WNPTFY6rBjsdB1i
	 vQnOlnltLvLeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDF39C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 04:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167652294586.10884.15690973455388263944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5eb1c72977dcb24d3d3afd77642d4ca9c8a409e660f327c90043dd8b33a4a0f
Date: Thu, 16 Feb 2023 04:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676522945
