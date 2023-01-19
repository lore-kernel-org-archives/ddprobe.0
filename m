Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7D923AE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EE1C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674105687;
	bh=5RIvil30deyPuoNGfskg11Mc1D7xbLTU0iAVn89Go2A=;
	h=To:Subject:From:Date:From;
	b=ptQf57Vs8Po7D7gH7R9+P7xYI/ACV8FYpYGlifP/Lpi1OIh2gT+LBGa2N/WKLsCbv
	 DVkSXVRHRdeW0nlhNBIr3xJ9wleoLma6wnjFrXKaHfAokP1X/7L62Fj7PNAe/BW0uf
	 5XVxAidOiCpKDYNuARrprsw0a2fCEwwwJyxKaEOAYhs5J61ESYoZSjKrdfvGjCfasB
	 cuJdGPRZzfdbhRUIqnhcDgLCsehryqYJYJEdcf31Zg5VhXnG7+ObwdQZ0o0/fj2pD4
	 xd7E9t2PbJCbK0JguDyRMIuv/j9qLL1taVKXvWdEvx4qaPXbOZIArv/5HAXq7DZ9zO
	 EXTUBS+lHQXXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F263C00A5A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167410568738.3160.5915726485827872245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b9f28ba98d8aa16d38d980d04672c462b8a61398fc0a326cebcf84e0b69335
Date: Thu, 19 Jan 2023 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674105687
