Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5295E185A
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 08:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8868C433C8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 08:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690188728;
	bh=i2Lxi1Gb5Rr+lexLwR00kbP4LyG63mWB/7rysbpvQZw=;
	h=To:Subject:From:Date:From;
	b=V9RZEZElfbFosnifuBDAunvifyC4kLBdkzpOOrVlG4P4CpcgFa2+C6ivYFis25YBx
	 I8M8UzWRZzEj83GCK4F24C1p7LuQIdXVsQfIOEY9fFFdpr7qQvlKSCHb71Ikw13i6T
	 WTglqklwe4ksq9QTxn3SlufslCgsAFzcJg9BY1pYjAhSDJv9h/gZdtTD5OERBwGqMx
	 PCD8NaklsfhIMxOvy5k6oPx8OTf58D//ywpWFHLUspi9y6bnKbhIPZE+0Pxsg66vlk
	 BDEkih/H8SYmXz240+Uj5VR/N1K3qtKJvqclCSp9EQCIJ9Te/kVmB71C5rkk0uYRN7
	 IFa5uvaEbxUug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6D9C0015E
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 08:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169018872871.9004.15749950017271805934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8efc34e5e86a238ca9759318df0033bf8e036f0ec7ae45aabebaae6dc02b7ee8
Date: Mon, 24 Jul 2023 08:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690188728
