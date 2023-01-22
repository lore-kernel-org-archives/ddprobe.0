Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325CE65B
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE28C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674373325;
	bh=mT45da1bGOoP2n31kE9cqTAgYh8zqtop4iJRE/cnaz0=;
	h=To:Subject:From:Date:From;
	b=YpQ1AqpJ2YBz28+02gO9/wBYmPrE70NOh8r92BIQLIgMXiWF6cNwRurEThZh7CroT
	 WQsJHmHu2YfTHxKtcSSUk39SLpRUU8VxE81lyeEFUAqlBDYGdvI3/E/heGHIwIl5Ip
	 5Zs3zB55GKLrpo9ZK/kYAY3CfstSzAD+a1saXNLzmNR9JSKbiI0H1hK1EonmW5yeH7
	 OhfnaoMd1omeP81L4EgVLhIjTsavjSVCwHWim8jsBM+6K1oAK4acARF5LLNvI5EaO6
	 Hkw5odxmoiiXAX0Ml47fH1c8s7RpfTc7PnABENvTCtgkQ39oozlZDJP16+467Ie3kX
	 I7XLeNTXrU/RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1284C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167437332576.26278.7955142240346793231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af37cb7921f9cbaf0df94d1507e7a8f45af3646314b42f4c0066be7ea822e50
Date: Sun, 22 Jan 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674373325
