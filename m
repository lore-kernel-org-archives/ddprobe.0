Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F2132C941
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769427834; cv=none; b=jrbdCNjJzfdjjvpyXa4O22xehRedOE4GysbHJm0n1uHkYV6Cm7FPTWDV4H3L4mJEOd+NgHiGCduGTqRvBNUIi3Iu3m5f7wMy8wVu3KG70q9ysr20PqD3ntoLHybABOXugVmyQQQF8V85ELSoQRPIE/AfTS2img/VjK1nHvgx7do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769427834; c=relaxed/simple;
	bh=1xTVqFZkag3dw+C76XBWAj8kHTqDamfPwgg8Nz0hOOo=;
	h=To:Subject:From:Message-Id:Date; b=jW5R/RxVt+rrA/MEvR/1MQrYpbwNEGQoo8ZI8rpkzNFBc0/LXc9BGGv7e+ddFD7blEbIebLaKKCAnt3u7p/XjAayvPUrZN+kAKoAvqr8v/tahvZWRlcJgMMmVdkDZaIsz345QXp0kPfQx2p3uHqRLA0qnO6CQ0n6w7IeMqnpWpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ft3tLcxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ft3tLcxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFE7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769427833;
	bh=1xTVqFZkag3dw+C76XBWAj8kHTqDamfPwgg8Nz0hOOo=;
	h=To:Subject:From:Date:From;
	b=ft3tLcxAuclD0OfcWCgMo21+B3q3EKCR3wvH1oA2hZ0nL7rE4Yra4ooS0OPd5nanZ
	 W9GJMVO26KTHLNN4RJWh0/LbNmWUsfSC5OBRx6JOJ4ux/68ZwqXKwqSv9WW5L0gI5D
	 riNcmoNu3HaaTGj5ozzDcFIPQmtHZMneQalrNnXkP8pJYiWZ5wEUx4b91QcavABnls
	 tjmC+5zWKxdVtfUBFIr8NJWZC/B3gFCIK0I5R45KAhcgaKyKeoX1kYt4EbJzvYPB1b
	 oUrHjqR9sjEDU9OARgxX+n6vZuL6NOalDyH/FluZHUv7FDHee6q7/lIlGoWQ5P+log
	 P+jo6fHXK5vdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED7BCF65E1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942783357.30816.12735401942092194444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d149f7a5c95f11926c12df39ae0b5110f82fded9608c2d060644be7493e9bb52
Date: Mon, 26 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769427833
