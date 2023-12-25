Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181965380C
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCkgOr/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80275C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703538496;
	bh=ym+1v0I1OQAaeDBpQ1aaHz80uw+oFuEdhoJX+XtZ8U0=;
	h=To:Subject:From:Date:From;
	b=qCkgOr/9LZo5uLa9jTP3BwU4vf6+xk6A8gmHSm9k1p/Bm7FoiXF4lNtO2pqJ5Hfc/
	 oz8rA6u68Pb18AMAsjIPUVJOiTXFLT2TdE9AQgS4Zmv5mZ5fGRwbOG6C/4rw1UBhLy
	 8HUDiiNFnj83iPZTS2fb/90bnxuEwUyUu3NnVurQo2ntpo6WsLrXMHJnpVFU+fbQUo
	 zJU/DmR8mdrqgi3wuyr4TO4wPnkiaMpvv8nogfYikpqey3X0sZGY0NGDae6SwfHYWE
	 hkAyMC0jxV2AkdlJ0N4YOd8+UMHB9zMr+i1QRalM3QtgM4xvcAaH/EdZAJtnbWSp6Q
	 cv9RWs7+w1UwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61FF5C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170353849639.31683.7885501232752799754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e112238b8777c951525d7b49141edfbbd7d3d5ae61215547a7f56ae192ad18
Date: Mon, 25 Dec 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703538496
