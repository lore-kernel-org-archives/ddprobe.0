Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8714015B998
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778115454; cv=none; b=eyB8kNNM/Pk0P9FHvOP7ekJY04wWRXW6IKp4o1DdQYcs5/rhY6iTtxCDzI9dsbz31iz5Nq8kOTvYURQyDbl+wcXOMcBXPfo/nFwrG+XcR3yXEqDFcYPNiF4b5llkFGYcRrIeD27T2A9rcjRPsPoZYFq/eWumrPnDQhRWsjCpN/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778115454; c=relaxed/simple;
	bh=Luwk7KkMUQTN4JgnHbfVwq8uTKX/+iGFHHQxWRf+u6Q=;
	h=To:Subject:From:Message-Id:Date; b=tUMdhiNV+s6eA3hGT6QmoT87qtDqZHe1CbyjkqaW64FbB5TfEyE7biugONlHvl+A4sAIX8RkhKkifI9oKNCtz0mtpDKSUOEtuxXS/wwb0tcOS79WX4IJutZzYckb//sBkc5D8dUaWRty3QtWkd88x7OoO/tZf94d2baqRLm2eLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKBYhOIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKBYhOIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF90C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778115453;
	bh=Luwk7KkMUQTN4JgnHbfVwq8uTKX/+iGFHHQxWRf+u6Q=;
	h=To:Subject:From:Date:From;
	b=cKBYhOIXubjR0f57XiSPkzEI5m/SuGACbUKDAgncNqACeoTzoS5Bw82eRhu0YgnTu
	 KHw28NSnxGLFe1CLaZLzI97zxeDE7sgCBbNDI7bxHnxbU/M1ktcpp+s03uXNUJnfbo
	 Bsf9H7odWGwT9UJaeFMf3MGzlPssW+i/d5rhbUIUWgWsjuU2t4EB15R6YFodXfVx2O
	 E7ZO5INOnlI7Bz5TmliDAZSoRHq3oxyp/GhYrIhHHLlHKGU8VA9sdwDjCxJAb6BC6U
	 iP6zbdOPGDC3JJfdKKigjNwt5JD47fwaRbDQ0RYMl/GDdlshsrVKHHRauxKpxcpJGN
	 YJ2lU6cLe91tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99CBCD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811545368.20665.1770172560030835055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980603eff7062256a30e15d3515c6731556b651895219250c66f5771ea8c40fc
Date: Thu, 07 May 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778115453
