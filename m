Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0081D3FB1B
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732335354; cv=none; b=KveWb2lvsO9A+/8ZO+eFmdgB9GRAEPEdHLuYKoF7giuXeYjv6mspbqMXWqUes3YxQmdTcDfB/ZFnudbUxipbhyW5P4QWrqPs8JzC9/LUBL4uHHUk6tjmXOiougTvwdsr+91UydSABljG1i1U+R66hiuoV3EV7jCFDpztoPHVkdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732335354; c=relaxed/simple;
	bh=GKwJCusi0tR89zc7VCzSWRdwZsTKI1+XbdZ4WdTnk6g=;
	h=To:Subject:From:Message-Id:Date; b=O8ucasoSa2liXt0swpmbxww8bUd0g3pwUdb6VvRceKjBvfOHKZFuOMEJJeOkzfJgJc0aLwwJ1Sag0YuLC9hItr2M+fX5QjnFh91KFBQ2CXEC5BBrhT7jQhbCqRUaypuenq8kUPk1GZJ4//q9dazp/hiZhTO3eaA6K/EfC+F33Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6h83d3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6h83d3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BCDC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732335353;
	bh=GKwJCusi0tR89zc7VCzSWRdwZsTKI1+XbdZ4WdTnk6g=;
	h=To:Subject:From:Date:From;
	b=i6h83d3qLiINcrh9p6oN/M4kGvQp1IzqnromH686w8/jFxKap8U0gVesYhMSpKD+E
	 JGPAjvasfYGziUEENaC9qK5ZtcR0UfbrIxMCf1IitKZam6gzlNYKo+D9j2Zo5HIy/Z
	 SsXAWim8A+4CXWKisag7wD5Nn27CExP/jBNg8oE3yFVgMo/QvusIiXVNq7CybaDwl1
	 9JhNYxrRHVpkHGvDaNn3cYwJvjfrd65l9Ah8pnWSv/WIxUBIgrRDNKLQCINEsSoFZe
	 yw2DtjzI3yPZm7coz5ZCLYF6r8oYAkBeOmnkYO1GNH/kOvVIwrfHdN3/nW+3j/v8/L
	 nTskT45TqSHow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B57E6ADC9
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173233535362.23634.11061268363328730669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd944e85ad209ace4835cde1325a3b656786e516ef362573eaa27739d4d16c1
Date: Sat, 23 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732335353
