Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD618805
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73252C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665116453;
	bh=97e7YY7bK+TiDUcEjhlSAQa59rGd11aosz3DxNiFuZg=;
	h=To:Subject:From:Date:From;
	b=lJQ96vaO2/HND1QKQ3/5TajJkVDI1v0BtJvBRrJqvb79vD2eK3iv/w+xVl9L9Y78Z
	 ILgQPS/LlG1LmGUR/Zk2s+/7URqi5jLup2J2FoJq0YXUmKb3YK0MMO9T46Z2evNkjQ
	 4MpNrRcl31yPrp36elCmBsUViKfaPxzQ/vESGoKA/urGXNFIwJbTjA94lH5LpvbGoa
	 27nZ/j+FAoD2dVfw6kj0bZ7rpnULQHw3eJGzlTxDUwBy3DpR+U42qpBzAidczWfARh
	 09fTgkBpbocoziXsqVjsur9DTd0pFPgyoF/MjYW+AHIByEewKNBHajsSxCCdN/1rbb
	 l4lxsqfC26TmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569DDC433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166511645333.4483.452590392437004962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03289aa436187467da2638217ac3957676dc392ffea95daa3dbb132f88af36c4
Date: Fri, 07 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665116453
