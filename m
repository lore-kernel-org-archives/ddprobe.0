Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279A78F63
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 21:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5236C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 21:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674594185;
	bh=lZPs9KWLT9ULSWFZMVO3eR/gdjA4l/1PLpIqZK4UvGI=;
	h=To:Subject:From:Date:From;
	b=M+nm/ePyhLIsKdwAMDNFmmdEJZFtcS8vVCrhAdurInJ9nBTx9vcyVGMqIZTyMrDNq
	 BQz3BRYXGCw/PFkIJJVWFoG3DhdkkhmoD4zdF9vAmsWd6ya2bDOwWWSF7Quyj+F0Bz
	 ehLwJrfMJqi9pjvHUdnqaVO+NaZKc08m0MGCLrGSlwBBd8zO4F1syjJ45J+xTWHSNn
	 4kX/3w1IRa6qDmQB8HIrwV2tlozac1SGMMJa91a+6Y2caAlw0CwimLkCFPs0JpL4MK
	 SWhaHmGXkkauaSPTdl93vC+aY4nPdXUWqiYYfbuWtHjSsd/4NMriJ1TieaBcdMZ+gL
	 fjLOG0tPTlHcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B853FC54E94
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 21:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167459418574.24006.9037507534170363429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37db217aa75285c31a304e7d589d1db4e895dfbb426c6f3f64f39ec1691bd52a
Date: Tue, 24 Jan 2023 21:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674594185
