Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F558F69
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFCBFC4339B
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678805286;
	bh=goC7KZXdI46KbtWSXq3sWJABU9Zr6E1+6FQxXdi3M6s=;
	h=To:Subject:From:Date:From;
	b=AfO2PUFc+/TmC/sem7wHfHLhou9O75bayUmi1id9BgmdJCA8Js/TWsUwVeZu+BkIH
	 1cfiCLOR8gU11wgM66yZzUFqbIWkza8A/KEBqq1WP0Kuc3soXPaIx97v90Iyu0tcKO
	 KLv5p3gqkn5qQi8vUMsed9ZlF4GxUstppD65yeAfH4HlMLgFozFy6NoMwE8hItAld8
	 1JI8idR05JxJPzQV5bZlRRYz5PVFvR4NY+m3Gf5iNxy2/NIehPamvXjWwK4gyu1rHO
	 Zct3XGP73GD5o+fg5vA/txAHn60MBnglS9C45koH7Rd2FLlgZCZDD1EAGnybivVKYJ
	 gCRCIs4G1bH2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDAE7C6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167880528582.13336.880335266864363480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13c7a42a38cb2e21e44d1f107394d626dbf41f443ae945710ac11ec6d45179d
Date: Tue, 14 Mar 2023 14:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678805285
