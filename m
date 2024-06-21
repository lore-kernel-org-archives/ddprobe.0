Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469848820
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718994743; cv=none; b=cUplFkB9/3g3A/iMYrrnAGjHY8QTEb98xrW4TLbBdvzs5hd+mE2mc8dqLBboVcbVK449T/vT5d5GdkRTEKWiKZCE9v8yUxps+L99MQD5eATpxmI19CP2hy0QuTsdvkdZhwJUb1HpLTeadsUq9Hlg4nRqfOucErpXMZUjZFXNaog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718994743; c=relaxed/simple;
	bh=XheUduLMCgEUPHOEMSg8yIRz7ff3la/cS6FAplMsqJE=;
	h=To:Subject:From:Message-Id:Date; b=RhW/CgqXxgr7Ct+tvDYYA8sBFUCqmIc1qtXA/2qHXTttRQnJvNCaZZ6oQfEx6rqsT6IpzPm6z1lhMQeLdh6moWxlgYyWSQK3h3JHQivyWsH+o2Np9dtfM3ZWkf027CpKWEkB8N4UAqaSs26m7Xj8wOvurTyfZ4Q2VWQ3FTF+Vpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q57a8yJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q57a8yJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03C1C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718994742;
	bh=XheUduLMCgEUPHOEMSg8yIRz7ff3la/cS6FAplMsqJE=;
	h=To:Subject:From:Date:From;
	b=q57a8yJXYWfpMQcCfhY+GQwAgarfLyJZ3VgQj/ZYDepRGCavWj7T4E+QpgTQKzTEh
	 Ogks/atTXDkl1Hj7wcspys6TvVvLC9yn2cmvPY26k7iLOCK2Uh585SHXA7saWLa9bg
	 NoA5ZGxwLFMk/Yg6soq4JBE4SgO8g7le7lYLnPDGGwM6FtCojPKcX7VS1oP4/fOoVJ
	 wkr6SZHRlTqqlwGbX/UqrXSVwBzrqrd2jX8cRPSolSC5HeWVQafJNjFcWx5+FqHG8r
	 kqzWUYgFOICzVw3PJXk0H5JpRljVXzd2mK7BGagq8RMcxT6jwgwuVnwDvc38Q2KAuN
	 gj+cb+cHtPiSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC8AC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899474276.354.14274239878172246155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8623114d2701adff20baaee5812bcaca77135e8145c95dc6485d8873a056311
Date: Fri, 21 Jun 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718994742
