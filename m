Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C299B7E
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6929EC433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664160053;
	bh=NtNQlhWpMKRkzDaJoGveLad9BX4AWov0rQ95yL0myrc=;
	h=To:Subject:From:Date:From;
	b=DlFid6E65KLf8iyaXIRgvNziXqZ5O6LBoZS1e703HuIJHriKSpn1IcR9a2Y2AxQYm
	 ofHoaodCtyR1Gq9gifz/4blEQK7A1HLgq8jmBbLPZu7a+rLilb3ahu83HtLK9sglym
	 9rPcKskC/L5KRsxfD0pSJw+g4VfGV1kq98WxdAlnpFHLSrgMlKwGe9XQ+xITnuNCAi
	 /ZDAiWMQPjxYeHGvqqlswjoTKoS4t2dHk0lgZh4NSHc4jaIyKdc15Eu+Xa/SScAXpx
	 Mx8jVx5yjrWK0OaHvGZ7DocprJlfHk65oL2QK5+Am8sbBHrYEU7IiLH91ZklgCaM5j
	 7avqNpZLRfXIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F908C04A95
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166416005331.32754.9674161170707473177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50afe2997be8aeea28bb0e2d5a50aa9b478d3049e7a8678ecf4bce5b47b028ae
Date: Mon, 26 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664160053
