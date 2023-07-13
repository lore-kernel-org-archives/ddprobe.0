Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847B120F8A
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 18:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C7CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 18:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689271748;
	bh=9AoesFL3sWs3B9j1VRReUWd97diyriUXPaXAiG3guvI=;
	h=To:Subject:From:Date:From;
	b=phxe0S4w4hCva5s6r/YYwSkAMHqVudHY8sY1LoskHF5WTPfK3B1movk5T1XVmIBtO
	 9uLzkLDNSpnOC0kJ22kYPq2gv45gVcBXua8VmAPmpSmCsd8XeodLw70QcMyoyihuDi
	 RP1iiyzj6qQEPo2Xkxn2nQnJEN3ZB3JKIEC4sq/H58wkRcV7piRNJFTI30v4we/WcO
	 Q4kf3ls2e28OJzCgXPx3U1zUYBHKq6VUtUvSuiZ5S4L8jg4gbuhgjkOCWmvUpidfEv
	 LTHD9xdhlhjYkNp7TpT4zgDz3VwFdXv8S1LAp8io2c/GiueRhOxGucbhzWubRsrOKc
	 kG5VluPl/fpdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C8BC001B0
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 18:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168927174879.12585.7619237564410190178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795bad0de907403795e24093df430be0420c2561ef20e1a27d014217940f7839
Date: Thu, 13 Jul 2023 18:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689271748
