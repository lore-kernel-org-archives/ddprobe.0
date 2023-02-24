Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F7B3220
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 18:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA779C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 18:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677263705;
	bh=OvjAWZ7vtUMgJ8ucsf8sZ5+OzjZoQYRx4s5jdcXr+jc=;
	h=To:Subject:From:Date:From;
	b=lmmxq0yQX6MucmOYrrWMSPZ3XGpEDZ6KiVARV/SSOHsiRlCaR8ArxqS1zdqIPb0sg
	 Xvm0HWZeQOzSiByg6rvQPYuIPaKPQL1HudknXw6rfZfgI6QjiBMtHjBADOaXy2PbJN
	 nX69Xh3hBlEF/Y0O7J35zcB9w/p9F1CySW2GelQ7pkMsRDXMJPjLtSIhDb3asu+7V5
	 R5do+dfbJh/EHmRt30tVHhrsb6MFP+VLtEcJtRdHVdHj1OOc6sFL8662iWQCtvY/mR
	 6c9o7PKFj38ZxoXwwB7rYlU0TNObGXBHt3JSeZLRs9sbyf9n531h8QtHiGnJSbF7HP
	 IQMsOzjCh56Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B635BC6FA8E
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 18:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167726370573.12198.14363038526805828980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19d017fc5300322699fe8c552d6b00c8037d7f34200769c3df2180e686b3224
Date: Fri, 24 Feb 2023 18:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677263705
