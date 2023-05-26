Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4613515BD
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 18:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FDBC433D2
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 18:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685124905;
	bh=3QYdm/BSeDPLCIGnQ17HJJ3PDUwzFsks9fhcutAD0ys=;
	h=To:Subject:From:Date:From;
	b=g4JSb3qa+99UBmg0scocZTMPKQm9EQU7QtvmnncKTgV84Dp3BYJLkp33cbBuvn14e
	 Mxn3tXQRQg1G5XhrBUPfPiUFPe3Jfygj/h7Ly0G/466DP3NTmtL7o8ESsMkc/PI1f2
	 rnnBMjW3Gp8duqV9iZvK/zSXKhnt5ttm81zkPzodKNT/uaaPZ05VOOqOIhg8oXCYSo
	 4CGJBG7Y/U0kA9YwdzqULIQjHghpNjXtWtYSnZn4L8vK6Kdz+ZaF56xC+cs42Naht0
	 FbDRP9Z82JcF3vHF5T3ieWXXSZwEPhx25K8KkvZgEv4txAgnstuUM2+gW1YeREr/Wy
	 Y98jShnwDfogw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B84C77B7A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 18:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168512490579.8049.6728083971461329060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d42c069bccaecce019a8338094647e5c3398639c5d10ac77a8d96cf2fb87cc2
Date: Fri, 26 May 2023 18:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685124905
