Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91C58494
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80401C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672925487;
	bh=Sz64K8Uc4jTAKZ1CaaC55iwTz+zDUO3iD18ZIdWFJ/o=;
	h=To:Subject:From:Date:From;
	b=N7nAuVwNo2JEKynK7vYKfaqSjxNOapHnFCcm9UtaaQES2kXWInTYDgKGq7sG+6t7/
	 jz+2pAhqig+i9xUwpKrhzjsgJnWxR4VoGRfloo9/FrrA6ZiY20C8m/LPsBCYGEq7hp
	 y6Wc0s2Xae9rpSsp1COG8wmsNAgOVri1NdVM9guM7Ntfz6+1+uYhVOZB/rBrKyrpbX
	 CNQwCYDD3Aydv5iCXVqB/+gnEcNz3Cv5T0hONRACGXQSlXQ6anTwwg05X8M8jPHBXM
	 JxH5OmsVC/mNL4UFlA/wzxaQevLMGrjRrkoQymfNo4yaJgshMcfqTBfaQ5H6vuW1bq
	 3TSwAQRUehnmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649E5C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292548740.5594.12616710218861815919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d05746e19f7d3d5baaf75620e3596e0576840a7acb86ee0d776880dd738bffd
Date: Thu, 05 Jan 2023 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672925487
