Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67711C3C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87300C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673160687;
	bh=Ld7XEIN0yXgQURdwFsDM8TAGKT9VivGUaIyfwg8fyj0=;
	h=To:Subject:From:Date:From;
	b=t8I8tBb+whtfnXeojvP1t30aPg+RXjQOyJ1cnC+PGkv5ISj8Ims8NdoGbzVUwk3uv
	 ior6GLeeLDdZWbw1Ckb15MPn5YurV++n9c5meaqk6LFa2r02IcX2piyDHnKfMcuhRU
	 xS9R1o4e9YZlpoAfgHkmf8h3vsSJ44Z0LgEGebM5Lc6IKhX+/fymoEAN4439PeouR/
	 J1FAP6msvkHbbHcE9AFiEeM8VdP4xqL0RDPXseRXcJ1g/3cB8wU12h0x2qQujizlYc
	 p1b5ou8rIl9kp+4n4Obut00q8mQ3+9B2Znmj+mTFa6Ux3k9e5TklIG2YUBi+oJXOkN
	 JGYXXFzZUQPlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69016C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167316068741.10184.17426593762812387468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e1af03977aa3afb9806f6ddcc5d89ca7817131a2452fc7261ea405bf8ea508
Date: Sun, 08 Jan 2023 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673160687
