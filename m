Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EA220E0
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A6FEC43147
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665849653;
	bh=L/Ib1LFPuzRYPu6BlLqYThD3zMw3Ze+F9KIb63+eVXE=;
	h=To:Subject:From:Date:From;
	b=rOMwJYHXfdPN/lxUf0Ga4mM1o8q1WLH0trSCHaEMsJ0ZDi4ucoQehPB84V8FekHOt
	 Zrq67ekQNrEYyC+BE4XJw8UpNUWK4z1/fvE4RIkFpjAE2oGC1Mppwj01ndHh/ugoQS
	 DaZjaMpmtenBjDCFl6frqRu68sgZft91ujIb1dRWKyxqEWo6oM8JFpMWMd1s8mRb5M
	 cvgGm66ZHPyzaZlat5wptPAlRoBtUFVjomJBnldpz5A6RfR9O/S1vUBKD4TgYflzot
	 3xqkDqAErQrXXgB/yaVMUAVcHusKq8AYb0/F1j1UPKh0U43qBQ0reHr+e5jVfTIRTo
	 n5UkHiQbaOGxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F376C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166584965335.13325.10177798701611960094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b2b4eb9d45c0dee406a3f9b6b41a5b7db17d9859672e543a83776eb99d4007
Date: Sat, 15 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665849653
