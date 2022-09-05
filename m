Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02184C7E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A822C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662415253;
	bh=65m17MSLZK62Ribumh6MfgL1VWl794ZbI0CDSsGZe7Y=;
	h=To:Subject:From:Date:From;
	b=JwvW8GpfUMvEosV32pN6IuX3fbSCCtRHD7EtKJSN2hytoW6H7xLulWp1zB7o3Pb5C
	 658FuaA87bOAgSm57BR8ZG181Cn9+Q4iWU292baYVYjiXUdvdPHtCsdnQFuhvfM0k0
	 6YeXZXs3mErSj+k92LY6QXp+xfVRaedQm29fXK57Bzw8Dx6dnJZM/kiz0Qu3/OCgTP
	 SvHiLJ3aslslpKQ5Dx97zFouaEH8PptWHRPCwS26En3lL3ngKnPE440kxzj57Zo67S
	 ZRqj0nbQXeh2Ne+Jge2v0OT8O05uJI0LRKBle4PqmLz83TVAfzW49aLqeph4sIoCeo
	 FaG2keBn/4DkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5362DECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166241525333.10863.6973964278107389945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae6222e92a5138dadddfc0057bdc047b2af3383dff7a3ce8d27c0036f5658f2
Date: Mon, 05 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662415253
