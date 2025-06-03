Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAB770838
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748991594; cv=none; b=Dj6SeHyDW9l0Lk1uSGR9uo6K2w2ACOecQUln1dgNn73D3AIK3WldZNEDOTsB836vFmw3vx5Np0++iNEePibaj7Nt6aZM2VZrzg87qzYQ/HJ1wV9Iaj9QQ9rslvQtXKrt1Wde5ib8oXQmLHqUQLeg2m9byE42xkTn/yOsJa0qIT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748991594; c=relaxed/simple;
	bh=wFzuMQJyxRFvzuuknykfC9vI1MQua1IKEZNpsxTm1Dw=;
	h=To:Subject:From:Message-Id:Date; b=ZdqooySkYua1UiHp40LfNt1qM9B2OoBY9Y7GDHFkOun3rzUAh+pcVBL0Zji9Evrfu8ioDY6IqAsYetKkgEE0WP0hVn3/+bnzpm9m3BsMQxYOX+Fc0DinmgHx1pADy+ZXGZFpXLMSlMzvIv/2usQ8Z4a68UpT3d1+iycOKuko8tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsdV4SBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsdV4SBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57F9C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748991593;
	bh=wFzuMQJyxRFvzuuknykfC9vI1MQua1IKEZNpsxTm1Dw=;
	h=To:Subject:From:Date:From;
	b=jsdV4SBbBisR9QDBmRtOeyNNRrc4CAH4TVw/6OvPnMApiI1ZITkYr41nElQAC+Xbq
	 hV32g52KDhRNNu70CVpUDkFs8s8V9ri3gco6oU4XfxQF5CTnYYRJQ7kKmVxo4kS0G3
	 H3zDe6VmhMwQ1SuSMMrkJRYRPsT5eR9sqITj652/pv5mMR1oZAAoVRgGW6uQ/0qz9J
	 v1LP1D7crwkiKV3pI86wFxSvDKgd887DmKuDtn+XS5AamZvllHIS6RwUUXTsz2lYv8
	 aELlYNx0B1yyVBEcx45L7NLkXPw8fXhh1ss+d4E5WFlY/Y97vB529CaZh+MphwNcIL
	 b2IWIGKX6qPCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905BAC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899159358.26420.10976673489032413729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3c1344ef5c74343616927facd58eb5fe174faab17474fc96d94522d1c0ad16
Date: Tue, 03 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748991593
