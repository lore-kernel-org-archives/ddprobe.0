Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DE55237
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 05:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CC0C433C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691991788;
	bh=du/dnDeMEQVHjcHCKmpHGzU5bEwHrOLhDaIxs2CRQek=;
	h=To:Subject:From:Date:From;
	b=IfwDuMbGByOcwgsyO4Cnd4Ua0RdDRECGcsgQctHXDtSvUhI5PMBqo/4yNROcpz+NE
	 wdYjvvZH1T4QZ936/w5Z1pKsRsWLkDxTl0WEidMjbIYJvHwp3cxUtS1XrrNg3DJrkb
	 xedYgIHF97nSvCZypVMY6y3GdCgqXjWE6AWtaxje35QaMCC0zlwBgKDjWY/9Y+EvZG
	 DMmZEG8WuoYVqxz+MbPTDEw6+q9sNCIFMDT7tT6ceP3HG1SpjBkUJ2R9NxEtTpeLzr
	 4RbO1HygKnCS/oYTj9qzpcPcLgk/K73cikoOYCns/sXUwCzwmwjrBgedAmpwnrttmU
	 bga9DYwHqff6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9495C001B0
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 05:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169199178868.12035.7986200114676917031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a63c566344580a99ee6606acbc09935b4d85c28b46eeae8f5faed3650530d14
Date: Mon, 14 Aug 2023 05:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691991788
