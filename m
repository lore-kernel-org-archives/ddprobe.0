Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3279ED9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 698EDC433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663684853;
	bh=tB7jhY39KZyntu8jFFBezGjsOeLjw8YfVcYy+9MryDA=;
	h=To:Subject:From:Date:From;
	b=Bd4OuSNjKBWWYh7lV3vDSTkBG2NBrQytKjxXrBaY6IgO7xVH+DbrE5u8u4WvmcM0c
	 gSJ6wZfhFbbyb4nrl5utJzJsAt/7TvQfpu5yxr2qUslz0DxtBeASl4MEJ1470EirYK
	 +mulB2jWVILbGHvi7tVO7IhTvP+JJca1pyAcSaO/FB+PdNjQEkYQbASUIbr919P3Ji
	 E6sfoAcmTyH166qVBVpfEVI1SY32dj19wjn0Ks650DGPEfr4rgDI/iMaOWs8qfcApA
	 9w4Em0+OH8orj2kXN2QaOzpTRUNA9dsSw4GhLHfQw5K+tH7enhJV9vwgs3y7UHpdXn
	 oFKQ/1Ps51S5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540B5C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166368485331.29251.626373036049536118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7669fe7b62a872d0aacbb3eebb0a0327f6954702c90d98ec910cbaeaf6f899a6
Date: Tue, 20 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663684853
