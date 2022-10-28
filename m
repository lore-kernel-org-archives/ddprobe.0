Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA98412292
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F486C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666986654;
	bh=VvmGyeljY/6XVcujbMJi1p79lerseqq7F+qVYUnPiTM=;
	h=To:Subject:From:Date:From;
	b=GOk9FadpamnLsdQUCT17YDhXaEvLvdwfm/HPKIlQORH6JmwDkRiZj9tmvWlBGll02
	 /yvtrQg8NfYo8ylW3HVDhvmLK0NkMHUqbjn+yeKHtb+Pk/dXF3lB9prEDnhS/Q58lH
	 3ds2zFb2xy8//gJs2tnFe8ePvcnCyUWjMbClo8V4qLpycOW2cbX7F1lUGijrVapMsY
	 g6XCVHi+h5qhSSjdoXjHR+3upbUEdV3aqaMQJApDGTDLCCZwK+tEnisI5/4Q0z/Wuw
	 18rqUlX3DAd1ufC0ci3gveOgyu5RzRmfw3UVswMz7Veue2yNqlZ+E55qPnUVoUpNYW
	 EV49kFxVDyeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545A3ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166698665433.27559.6850142903345651971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597f698077ab9f3de25dcb93c5cf346562323a4c4d27f69dea38a4d101672c10
Date: Fri, 28 Oct 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666986654
