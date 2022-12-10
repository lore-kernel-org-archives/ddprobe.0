Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC50D10F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DBBBC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670664087;
	bh=LK6lFToZNjVhX2dW2rNd4jwzvCXKygr6aaRYy2QC+zM=;
	h=To:Subject:From:Date:From;
	b=XMGgvKVjzEyBXazuCiAjsKgfZmwG5CT/q8FI/btXU4Fr26QZWoX7Fy7LVyV3Yx6Kk
	 ASVMPe+BvrC0T3E4wQXHMpjVxFe5qY+oPM5MLllY1BFf2220NXOlEM+ISdyL0poVKs
	 ae2I/O4GOZSQAcTHt+xAIiqhclnvWekEqXqbM4emM4K96NL2jDSDjaKYqE6EgxtEJi
	 72e+6d7qJ9j6d7RZxgaFPScT3eekj/vzQu5j4Zd6l21b1KVYPilYUd60Hgtd4eeLGI
	 33qAJwMdgvq3V//+mdctCpiLBPM34VEq1gSyrfcjdE1ku/ZhEHBLhdxOQQxWagzRVR
	 JPeLEG6hlBm6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62659C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066408739.12237.4251860677579675603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d192c84c13b7f5dcd5fc2614fdee8dedfaf46bb440d4fe56e5fdf089fd1cf47
Date: Sat, 10 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670664087
