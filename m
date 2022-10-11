Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC5A33DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE07C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665496853;
	bh=LMTcDI1XDMw50xBfUDK6o5FNYHt+tE7ueHFwEgF3uZ4=;
	h=To:Subject:From:Date:From;
	b=AetZnWYOWh37jTPdJ0JPUUdAnJ83AQ26u9a+OZW0gSCyhUaXTgczRuNlkH4RdhLs2
	 APsWKFugOE2S8jnrgfq/B1Ndgd5dcM/TYBWkSrYRRne0uzt8aq84EXq2UPWEm9IaPa
	 IMfBI2+xBKYIxbC16Jnv2KyHqGSTBo6r47hhoqEYD0+U0JmRoafHdJFS1nM8tPbus9
	 w956+7D2gOzzxdtYbcjCMnOYHLcXFoJ0KC+rDkxICGHwzQvIFjcFWaiKpAcZRXfLSX
	 72Wp6OCrAnfw+TureKQA2IaPQbput+aXkvozpHw6ndXz27UK94rgeWH5InUS2Tqxyj
	 VdZIlIR45Wqcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53880C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166549685333.6038.8440035339500192322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c123f6cb76bccee8746c146f08536e374db8e1c65b0d3ffddbb53cda23eb5fa1
Date: Tue, 11 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665496853
