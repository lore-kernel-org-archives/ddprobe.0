Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BDA17CF
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68980C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669558854;
	bh=5+nNXSXAdi3GyHZ7yzWZMYSB/8SWIhiC2R8cM32pJ4k=;
	h=To:Subject:From:Date:From;
	b=pV7XkNr2muqQ1YPlIaOtjJEWhhPAx30lFSCHyuzdOyIrKrZCisxRQtk/RgNZQC9pD
	 nesBYQVfMdnTkMW+2UdlGrrCCty8w04CCW6y/5JjMMmTo/Dyhpfed5F8AOqQ0Ba9Pg
	 8xWwaTc9BUKvIjICpqXQjlsvy4A5t7qZSmyMm4BhOZ1EFUvuhvHITR04qmt6ne2x/w
	 M3pMGweDQfD42SgEezNRerCYhSEW37EqKd/4/tk+85Bpg7LBF6EDbvBsKetAifhCti
	 wNTA0qeAqylGCuP2atcc3IMaq8AnWCShFVUgHJ5qneqivQW8j5EnLfiwKvuVdJ3V2c
	 z05wmSvQuhABw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E5CDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166955885431.14736.239609653917845554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01219b943e95dbf549bee263025dd7a4269a3aa87c37b543bdaf89c4dfc084ac
Date: Sun, 27 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669558854
