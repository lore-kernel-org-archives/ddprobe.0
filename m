Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B08C07E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65063C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667331054;
	bh=QyTS8mvF/t3jPonOgojdZ2RMpxV5ggfz+LFF9Ex2VjA=;
	h=To:Subject:From:Date:From;
	b=b7cFXDVrERYiQhXMzSyh9VGI15hseK4ZpkGiH3H/ui6lO+Xm6YBSaDh4sMPlTxdVf
	 O/EvhVQ4dyEcn9SL5Ow0CIfnc8YQFliRcB/O5/z++szh2TAfb1ckzkA+1NC0TiVn19
	 oQX7T1qyGiWBaZf0YjC2IcUoeKi2hlMCtVTRGZJAS0rmODGYqBZ4lLGZWbAgp0sml/
	 eWjWtNgcyRNSvn4NgIp9BaXcIx2HpoCrD+f7dYMDReT8vELgSOwqxqvzfcOwb4iZLA
	 21ItMzPlsmXp5gOZmpGPeu2KemcYvnP1WaaRxL7gVTqyv3lVCMreE3eug62WP7p+Pu
	 tR3SrxW1nna6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF4FC4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166733105431.7277.7241300480497619639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49ff7ff13c8928a4d3f21d8450927dc149d1a1c9f6d96eccfc8fd0bbc33352c
Date: Tue, 01 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667331054
