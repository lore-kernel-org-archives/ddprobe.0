Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A7317D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7324FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666331453;
	bh=8w1ohKt4CnbvlXslvdaej3DbWMxe6+NZDLGR1Jm9LHU=;
	h=To:Subject:From:Date:From;
	b=gVaNbC7uBKSLaS7oGSJdYDctAjkEFHpoZPwp64OfwPvsx9M7QoijO560b7kIeSXUK
	 b+g49ZpThIve/cIbZTGtrwRzI85P83LFg046r+KQyF3FQ7o4mrhrQVeqV8NeqFASWP
	 qOyq4ff1JNDZgoO3ClE1d0sM9V7l4jmOBAKCR48yNuzUaUMOzRpRDiIyakDkCwVOWR
	 RdxcvryCYIglm95ike982LrDWQR4bD2YtfJJZx6x3uMoYzD0k0pEoiRAtGDXai2v6w
	 NSBA37AHydhdwljHyft4yQtxH5zsrsAxRJChmD80Owmrj0HtUq2fgnO5SB55XBmQ7O
	 uYwnVfS7+A0zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534D5C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633145333.13225.16060628807928392558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17113911635e176842ef386f4c7c6de40d01d90cf843e217e2152a510c3acbca
Date: Fri, 21 Oct 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666331453
