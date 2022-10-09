Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3261389
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFC3C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665288653;
	bh=jUs+SB3q7EIXXaB7xXjMuWZImei4P53JIN1ZTVriwg0=;
	h=To:Subject:From:Date:From;
	b=hOjGVb9/ctBMvRWCJshUpeCVFm6wkn7MEikQfd/eosxA6G+GnK2LcsZBnFHm6hWiv
	 7P/RBfuqNPWhS6qUiaLHHT+35jShdIknxajLLq2ZF6ZzMSMUuaCR1eLJ99R+b2Uy8l
	 l68Zu4NeXgs+WR9Xgzpg9pyEY7yot71tyjWZnEP/ku166FH6rE5Bb340fn1bdqsUB3
	 2MvbrOE2/nNbsb+ZZ5oD8XsVQ9pmZGchRS1b2eYtOQKOYdl16Yd5bd2q37CGFicqll
	 brMJnfeW2jXRDhLPTj56iTRB4XijGnqne33ibIoJbXlu27v/sl5UDuD65R5IIpRCIr
	 ECnozhDI/mUJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D6CC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166528865332.9571.16174349056004842052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d6b9192c357a85bbbd73c2dc5d4fb2a45f0547937c08ceb93887746a4fab55
Date: Sun, 09 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665288653
