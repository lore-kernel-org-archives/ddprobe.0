Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B89374
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83A26C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670380254;
	bh=IOEV0L1cSRxt7TGe0RvS5sdzwEczsSjCMQoDLq5uB70=;
	h=To:Subject:From:Date:From;
	b=RsEcP7ojS4W7ZhQoxCyUqxF7XOT+TNQfyftWpjm2Pps6f3SGpXnMgVLnNzmjAj8jM
	 SNFmpWdseuulMjel7erH/gxc34IvaOpGdoxRPtwW6uNxrdBL+1ULunGL2NfVsIfHXK
	 +vC3STD0iXRQr4TD3SCX/h69sQ38exBml8kULbr4m+wZ7xw8veQ6tlp8jOMq2ySu1X
	 IpaaBuUgsD5FfOJ25BZ+XbsX4CFRGfNkI2eT6PJA3q3/n1zpavNwPcXoc6URXNMXqC
	 KBr13xdk9XaHgsMlHV+VUCT4VfeRZMBzqTCGi6X41TcjGhwSu7NLC4iqI0kR5+8/Jy
	 oNJn3lG3+tZuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652ABC3A5A7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038025439.16537.15829053557912005374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963a784d4649d6885936e2671c4b7de9ae2a041114e037d47623e1a5d4ea97a1
Date: Wed, 07 Dec 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670380254
