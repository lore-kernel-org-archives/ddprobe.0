Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB6162E
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73655C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661845853;
	bh=lKrjmHVW5RJp5XkN3VvP4bsJsrK4fDmaUBhZeBhrOZU=;
	h=To:Subject:From:Date:From;
	b=rlOMyGcfH1ikFwbHpZq6Obr3uoqFdZO+jtN+KRsSbs4VInHG7jeLFQd9s76rnwgTS
	 tCHP7fRnDuR/JrGjiidoxp77CvvzuCj8IG8mE/3P6KtEfgaUU7FuCaYogmXhdZ43Ts
	 2MtrUQCOWF3C8WlMiVg4z2e4gYwuocyKvA2F8Nb+IIdkGOga7TTXyhGZzDDD2D5rfc
	 KSOtBmu0JXSggQL1I7NvH3oab6/YeI3vT8KOzP6+U7d/gsIk/0fEQjatSfcrU9TL4o
	 L/AqGCPTdSE8BOSgYpUG9560dZnSy/1vIVSBSch7dkC2NtuDwMn164McnAP9N14GLc
	 kMqADlNnqH1Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5883EC0502A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166184585335.10048.10188487578533579855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0ad6b0a8073b8c9be96d25c844f02c28c6321cf1298157d28202c7340ed4a3
Date: Tue, 30 Aug 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661845853
