Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E808F1FF044
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729551954; cv=none; b=tFPIQIw+LdwTG3fDKeibbrf6BnZIiQnv4qqsfl5RZPs9dGDScVQG47gv31g5nmAWuaMXIB61vTpHORVHfIBihx14f+WbpTZer1S4wCEqNV9nKterA3BWmRESr9BqEWHQ2HCEN1Gn4UK0uXE+bIpPKF4x8hEE4p/bkYCNgLGgMxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729551954; c=relaxed/simple;
	bh=sLDSellkIy2cvt0iuubpKdbVxWTw3qS2CqTd/R2rgFs=;
	h=To:Subject:From:Message-Id:Date; b=E3Cvj6CBxv/SfqcPYEJWM9uv/RPdSJtCPtaHrZWLwOyLSUdnGRk56dhqlXGXUBLruVRLaqst2IaRlTWNH4e79lbQFyXcuWhAsOCoVgMQjf+ZPl3xaeVEXeMyMJNh7X8EoUZ5atFpYUUgcrv+OgCwGXbXA8g9EvqVvWxDGj68rDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjKdrcJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjKdrcJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2D0C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729551953;
	bh=sLDSellkIy2cvt0iuubpKdbVxWTw3qS2CqTd/R2rgFs=;
	h=To:Subject:From:Date:From;
	b=VjKdrcJuKH1a7k9rapmnig8pzI0m6QKTG8euCEHd3jUzuBOEdrN5CVEHzreFyxoaU
	 B3/E8MOCOMVV8k9Hzb0Pb4fsKufaruQnrR7C4Zv5r9HJ5XKtUK2THH08Qn4jNt+bpA
	 eMEqZXl6PlPeCZcEU/ET5C/eV9SHT0jsgYTA1kOei8mxjsZ5PWfowFWE6bPWMO0oXx
	 a8PO4aSquP4hgbNvlnFULPznIbDk1GffJ2z76LCIan7HyFdoL3iqqStNWWIiZVJI8Z
	 wVdz+4K7hsqWdwVk2mf+3MJ3Bq+9AWLCG++C60zJfapaMRArxQ/MPDrwhzOTc2A1mZ
	 /OnUaMA1wozEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC690D17142
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172955195365.9163.4590128999331772991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207b017ee85e24bc789eb112ff678ae6c9a5fd119473035464efc6dd969773be
Date: Mon, 21 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729551953
