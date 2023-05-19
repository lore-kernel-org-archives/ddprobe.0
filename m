Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E4D125D5
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 17:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04C5C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 17:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684517885;
	bh=35nMSHE1tZJc5cfByValuU3P7iXF+bDLmT45xr4kzC8=;
	h=To:Subject:From:Date:From;
	b=Ohwu3xWi6QjxuwUA0/LQR+MF1UAmIVfQ2xHnFTWhJedNsUPbwRB7DMHhVuQ8u2N3C
	 /9OTMEbO5lhM7qhUQebhZ88UXxEmmEtcQtto/m60owuJ3R27I82LSUqZNf8xeyBDAQ
	 /IA19VDQA0Xjj/54OzqslF5H9SWVmOtAvpYQG5KSsiGXPn3sZTmO8GeGoYLtoELQjb
	 mMOP81IBg1Hc8z0B26UTTN+XIu/NfE5WzH10voNem6xs/rGZihD6xrBSq5Ln7XdsHU
	 Wn30AvtRNMeRj2RQiZZxWpeQr/SWyLOHG+SoMNkLkK38EhWgQm2/9PRMs7KLgvOwcW
	 qPXJu/sOiBr1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1308C77B75
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 17:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168451788577.758.10096734116169551878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b620da09b9718266f4ef0ba7bde7ce0866ff4b54f43756048f0555ae7e0664c
Date: Fri, 19 May 2023 17:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684517885
