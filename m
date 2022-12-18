Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BFD2CAB
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83628C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671393687;
	bh=RbDoeau03WuMVdTfM7AhNkGJFdO2gSaVI0K3ZYYHC38=;
	h=To:Subject:From:Date:From;
	b=cR8ixo3S0yqctFHrbnyTCW4hV4OzBEBvsKbXeG6ZwIF+6NRZs2vZK5I7sY/0IaD/J
	 L3aehfJxWncBQdOTmbcsEXU/LUxUWSoGqpEz6hSr4oDYjl4z7j9Ot7j2DKmnu0HL6g
	 JmBqGNwXi6w+aNF4Rf3r5Gq8KS9jesedwaQh6vhLnZPg+NpLPY2PLvlcVsfcnQrraj
	 p2XoDDqn44atRc0ZQtbzbXQ3ckuss3wGjkVFecsV9lhBodBWFJdxKpjqH5bDnZc3U8
	 Bz9tmJf/7PZBDjf3WRur8+YLkiPti8YYL7ZMQ+qqhlqsSqlbCbWnDCzDe97WHKNFzA
	 qj7yjAJFfTnzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69238C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167139368742.32154.15839106814073197112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558af51e56e38b3201ecadc81367dbdf9c713a4ff5c709684676bb0aba64caff
Date: Sun, 18 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671393687
