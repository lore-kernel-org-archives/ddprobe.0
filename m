Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7AE7C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75794C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663640453;
	bh=6jYPyIDweYeoO1oMsyJZsNdhyaOEZAWPuz0bLqzssBQ=;
	h=To:Subject:From:Date:From;
	b=t7NmkdBpwmvcCAw+MjnNOyISeY5gUHxGn269kEZOHzNYsugEEnW9WBWBhn8qz3X8+
	 7ZxqJw0O2ZdcBtNUb2eOrJzko0jzvV5lvlChqITMCocwGKgPYhl6fuDYkaOu27Ywkn
	 DydOR73lyUo338i+nMy5bnuJ3SCkyhSNQDbXxEHKn+7o1LHkg1tbprt7we2S/1+svN
	 Ixpx7kZUlcR8L9YDR5Kbvv16zyBC7m21RS8Bu0seSjMipAX8MSo4/6GNGOBELtl3Vv
	 4YXGoumDPzHprvCRINeNmcUR42w8XEd0z2gZ8L5qJan2gW43ZT/nQFZZlSgPjx5Apv
	 HG560ndkqBS1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B87C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166364045334.31087.15066355189473462122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c5f8c7e5f97ae38b34e4c3c2c1f695d0c34111f8bca006a548d92d6ea343b3
Date: Tue, 20 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663640453
