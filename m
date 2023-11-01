Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D0B13AC3
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqLgwnDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 896BEC433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698846496;
	bh=k4s+5JP86LlVpHxuOqnoRYHLs0FEdJZZm3O+yc9LlNU=;
	h=To:Subject:From:Date:From;
	b=FqLgwnDbRemajN8i09cTUlU2OU0xbpQjT/06d88HpvZ91o3GsOP8pZi7fYCXqvb/g
	 XYIH7ba+bCYq8EdQ+O1xpOoV3ympwXMn2s9Si2+HcjDH8SwS3x3aX1bRLl2X2+5zjW
	 /59mYCs6/xgr3NFIRUmMZrhJAdNoyJUD51c8edJL2vN0UnlVR0a8FA7JIfXv9TfJOk
	 Yap79ekpT0IlrH09LyRhw2FVZq5PGyCuXKP9pOqb3OYlKSFIpTrwzR7QxtGVNDtufh
	 6xvgHJzlXOqST2rCfzVaMiKKDBeACL3sUHTILVTj9FNf1q+MuLtBZo4dKjcKKmWn4m
	 d9Y5jzkqXreUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C79CC4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169884649643.27167.12903498147867817643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f8e4fc5a7372bdd2a9268863d4fb65ebbc11b37392f36c2ab229b359b7b0c4
Date: Wed, 01 Nov 2023 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698846496
