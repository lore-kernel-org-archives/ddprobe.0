Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1970C32B98E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768644834; cv=none; b=oUogwxrXDPkDPBlUnCJm1NZEJPd+LdsdWVzJ7tQJYp71+HPd3jNvG4Mukn3LNWBStEVILMyUDPjQXUXYp3xmYLQ5CI1QlH/ZrEXw3z0y3cIIdUhBRAg3OaCXN42HhWKt0aquiEqt1+bSVJ5hfLMukjUJnaxGtxWBrsZV5dCidbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768644834; c=relaxed/simple;
	bh=NPNIYp/nrB0wGF1g/XBd7iw8Dz6eNNGo9W5P/iUyWI4=;
	h=To:Subject:From:Message-Id:Date; b=okssCw1uzpjZPkNw3tOlFQitDKP8jeNchhag41yOLsyeH1/ekBLV1FoKmoWPVDPfTi05aLsQsuK+1dH4t6wZWl9zT6zd4+TWGx8jQWpDEAMkL5lkX9W/v/Zt1+9r9GGP8WIXIe1/hosUKf4auqLmYop7aIf3YVYTeoq+wCnzqGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JplhCi1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JplhCi1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30E0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768644833;
	bh=NPNIYp/nrB0wGF1g/XBd7iw8Dz6eNNGo9W5P/iUyWI4=;
	h=To:Subject:From:Date:From;
	b=JplhCi1eDAHr339PfDWTicTjCyOWuQ3RLS9+lMfdN6w6DTi/1rcd4+Hvt8OArmD63
	 i2/Cfu+AZZjDTp/cJacKKVlKIIX/9MV2+qFSeOyX/CVHeMDYA7vMLVsvzOf6S2ybJB
	 rMClx18G85vFLUWThC36VbubEBdH3tnrQeTE4q49xG1q7LZ7Oicz+vCu0/rqEz6h74
	 F6uruss3pUtriwyuYUxGuhz6j2Mkwux0I4fPSD4+/yTmKpUMDD862XHDemgzS/uzrL
	 rmsHCLiWJIH1ZT9ZSzkrrTahFCaqLQrzfcRrpuS0ZNyca9HMeVnnqN78Mc4/kv1+SS
	 Vn/DQOu8qJYyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8DEC98321
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864483357.12487.4496928763459877406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d415cc9a49d274150cacb4263ac3567067dd302540aae8caf0381ec967faa926
Date: Sat, 17 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768644833
