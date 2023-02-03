Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA411C29
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 10:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36EDC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 10:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675418765;
	bh=/z4As2neEn8IHSvTkm9TFvvSpP/TDU5iYKF1602rG+I=;
	h=To:Subject:From:Date:From;
	b=X4hTYQk8IjjD/1zAEHzRQYgWwkgctkTjp51z4yEnSmHXpnG0IHBhehjXwYvH44o3K
	 JCdr0yzhKmU6PGJGI/y4gX01WuOg+IM2xqYh/hCe2fSifdWZMErYvwxgW3tpjMTgiP
	 cz8Y/AD2bWdu3aNDhkWRTvADZ/gueCgE/QKfTNEXQf5SE8BB2hXuvyagbknNNT+CRG
	 PJBkExtp6z0DFTp5vAIS9ERzPS1JSPfDMbe0hBHmj5OlVZqyZKR4PjEwwriBsfClFX
	 oBGibA7D6RpYFCzHnM/JjtJyb+MNgCVmvb0X1BIigEhDKkFr0VyZvQ64gUXQQ3YUWs
	 H9ywckquknJgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08F8C636CC
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 10:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167541876575.22300.7495398554315887254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b071257289ed0ba2f62b0b80ce49333a55d183afbd21d3342867813f4010980
Date: Fri, 03 Feb 2023 10:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675418765
