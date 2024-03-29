Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C14E3DBA8
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711712897; cv=none; b=PfRR+4q8Zo3s18owtk654hpNW2i73RdLf0t0iszn/0AQdlDPNVA5fuWwt1+VwAhwFBTZx5w8Li3TbTAduHsWJUcezMQNgWJjHkfbNRxdz2LeIBli9UoVcPelOmwP5EWI29uU02cUC/ZaTlt5DiT6VDm/ya0JT6L9obGN4OC5oGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711712897; c=relaxed/simple;
	bh=y1lhwl2S8HCG2mE219WVJKZ0LOHb4qSJuuat6W/TW6Y=;
	h=To:Subject:From:Message-Id:Date; b=ZeMy36UGNpb98o01WkOgI5P/rLjabvRogQp4h49KnUm7swq9L/O1RQ77UNXbHCXLMrSFigIEVOWjRlZ0WDUVxIYfWBGXKaMQTRWFllYn9UzqVZMJgtcNmDpDFftaP+joOxPnYsJFElTrqpjs5aC7JPSEYG4saU65N2D9qx6uIac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUxZnbYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUxZnbYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18CFC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711712896;
	bh=y1lhwl2S8HCG2mE219WVJKZ0LOHb4qSJuuat6W/TW6Y=;
	h=To:Subject:From:Date:From;
	b=uUxZnbYceA/8Z2gfRvHUGbG2FdXLVJjb0y2CCSQ2Q/BlUBWiEk9lregvMi6UzCs/X
	 IUCNiIwiPb8uEUQGa8iQQgUjcpRLBLgClgX2Y91S5SMad4u7xq/iuuMtgY6fwj2Pnq
	 XwQBiH+cJUmHlGmWqkpGvv4UdfdobJTe/Q92kjWHS6HgTT6BbwGgM72jkZZwnMW55v
	 v+BP2SV0ErHqh2f00hdvasIzVIbQlXpN6I7m3DDqwY+at+cdn9N8H4b38XH9VKX9tO
	 EF+ZdLUsqS9aA+xud6lnXGAGcOy7m3mRdV+NG1zCHm/reFrm+ijBIpT+610robGXCq
	 fO2CZQBYttBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C3CECD11DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171171289647.3038.7935624750471367658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44454d79f1428d7ee047103feecae5887b1efe68b0324344ffe187d11317a996
Date: Fri, 29 Mar 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711712896
