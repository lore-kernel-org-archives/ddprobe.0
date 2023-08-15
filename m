Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D001097E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 15:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF8CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 15:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692111788;
	bh=dtHJQrC1Tmbw9ZhFS84KG1DHOMcEY9DsCUeqDEBRD4U=;
	h=To:Subject:From:Date:From;
	b=odtUam6FctKS+DiGtHFRNtNy8F3Eh833juFGAU45bjMwDZj88UlHvkLV8+swiNqNR
	 0xV83NtOp2c5n3+vDiD8+x6k6gfSnOLtDSiF3O1Ul9a3ab+8h/3YFucbJmxBG6NLbX
	 ZlryV/eccn7N0MxxUXoHYJmgxhJBDcdpf7kyQTexdFBTiidWZft33ntmIDgnRr/zdG
	 iKfEx6FqyBBHXmEc1Cce1hHLCwh2KS+mVw95iXbRqDJCmhX5dcNHdgtQ8mW+OmI+TN
	 6udTB3QZPPGbgMeLOBLKjT1yCoAsyZ6+wXbW9d6zyBFtlZd1DbWy2Cw0D8RrDh4UDI
	 y1UmxzLC88BsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5661C0015E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 15:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169211178866.2068.9106705670904337260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bd69e1a5c6a89faa4fe08f797f2beb5c50fae54b8f5723fac5a46dee9eb441
Date: Tue, 15 Aug 2023 15:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692111788
