Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C628835
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 17:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02F23C433EF
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680283326;
	bh=pSCZlanBcQlzFa9KeNMZ6IESBSpyzCHR0esdP8Btoxo=;
	h=To:Subject:From:Date:From;
	b=TtNeGFUQE3iimQEskO/HMr5AE/Uxd+Wlhx9YjdUwQsYYIZUnTNMFm4oprx4I/cdxe
	 xkJtRBnvifOGKM5ITwYn2K03DFXlIy9aECGhYp3pxmrz1We1jTItQ/idA270bRwhl6
	 w2bUgHobad8t4EgubMXv4eVfEbHMoYVMAFYPt+nU3nqrK8T2noR0MBrdU1TBW5Vzb5
	 dB8CWEvHzwh+ao6n2PftVyxGzQqA7m7OQ8wfLlTLnTs+a7WF0lDXH/8w5RApkFoHRO
	 AEjP61P/k/VUOiJrLr4IoKaTMWWFxuroTJgbu7YZo2BkP0ORe099Im8jM8dWKqKiT1
	 8cNW3tQ8LKAQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D464EC761A6
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 17:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168028332585.6606.6848648924386910782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d966dfa68aaee3e13e42cf4428c34055d05dfa0158e61d31118af79ad7d8fb
Date: Fri, 31 Mar 2023 17:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680283325
