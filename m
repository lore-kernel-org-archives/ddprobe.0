Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1FF15AC
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 22:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC1CC433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 22:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681857245;
	bh=3Gxr0ksMANxqQIqEpi+msEkUtC1ACiN0iFhB+VL/h4A=;
	h=To:Subject:From:Date:From;
	b=k2iNW3y8sAVMM5CM0JTAgcJha0RGguVcJxmnJyuIS0S/Bdw8msQuyrzqVoWBtimGv
	 59muNLMRsqL8C+qd857MhJbbXtrgQB9NyDFREptE7XiLbBZCa7T+702EKr2D/ivLTZ
	 mAs8cq/1Hqn+ohLj9NCwcu2MYQ/hWyV5OeLXOU8WPiRu9if64OS0KhOLdx5StaeDQY
	 bmIafnn3ZiAwMCvVMBVPWiiGy/fdG5qaqp/hKZEx5Ht2NRZwEXPM93lXBz05MPvZ3Y
	 Mvtn3YBYt68QEJzqszHc0vPNrNYpTlBLwTmuNMjkJMjxNLHjW3QADMTAW0oSxX522r
	 51kJK8v+cXL2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF36C77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 22:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168185724575.4730.15338331736787012081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b898fadfc597be84332b6e6447f8daff01e84ca0df8283fff08084476611d2
Date: Tue, 18 Apr 2023 22:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681857245
