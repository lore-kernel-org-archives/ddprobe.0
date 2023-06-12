Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADCBDEA8
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 16:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1CD6EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 16:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686588846;
	bh=ggQj488CxPnpiPMo/FKD32glTRVvW60BlQHghLLL800=;
	h=To:Subject:From:Date:From;
	b=XHGo+wZlRQllLOS2KB/nnqlJgte8+IWDgOt8SvfR53tQNlA66+rp8sr4iRYefrPLp
	 k/9vIpR/lfx+NNcb829/ta13Poq+BR2q4ilcF5cXX95U4GYh/YTkARXPuwtU7BBLQq
	 zvg5oEgU+PzSNKsbkx8yuQoQt+w2BZqIrtL8/DrS/Sp8h0wQtbQtYGT9xAwl1FDawN
	 GN2dfPhK9cluj+bwRku5NzB0r6ozpkw5VvuLFPwSdm5cFyUrS4CCmNj0cwt2JuSvME
	 MUUIXxAr2/Srgm607Wux4yvIJ4OYHp2Ra6jzRWx9PreyD6XpqrVtgdTR24WEwF4IX6
	 6QtAiM8o+QcbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0550C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 16:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168658884590.1871.14774994571312990722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e78df16a7a396e0f483bf26e8c5d048246f2b3044c3df67d1f716ebdc7d8da3
Date: Mon, 12 Jun 2023 16:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686588845
