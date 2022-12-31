Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42BC3209
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CCE0C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672510887;
	bh=ES5A2E6QyjxH55D9vaBs4ytCCsKX5OXUcpRrTNa+RCQ=;
	h=To:Subject:From:Date:From;
	b=bxK82GNp2fm/W63OS/Uzen8bBoZ7OBCXRO6ATKCr2u9KmW2JO7OBX5VXxEs0TGj9Y
	 xPxxOb0e0sFEvTbc2R4mhMWTgX3J3mC1PDj8t8Y+RxC5VSwn+qmHs08TIsVJpyqGG2
	 0TYKDma5qGgavViqPvsN0FALDSd/phC9hS76dnDiocHKILPiDBj2OnSAE8RwXSY6WL
	 sbps6TWEmRT1LQalaBakcmUmvsLwmgoURB7SvXm4rrF5zK297PhkQdu+knPdcT95YO
	 5F5J/ae2GDpvyvXA9AQHvSptZYG3X0WcZHUW1u02/tEOqzt7corF4p2mi2u0ogWmx8
	 BzDiRHLwIMrsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69AE8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167251088737.13284.15207107391850903024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2cc44657572365a8db5cd84231b17d068b55da7fe9e1f287e936c2e5eea4eee
Date: Sat, 31 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672510887
