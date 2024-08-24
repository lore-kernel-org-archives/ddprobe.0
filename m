Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C4F154434
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724498154; cv=none; b=j1vfw1eH6Ws4JGdCnyuyU0SLbCRexO+eaMPAC+YbLgr5/vY6T3FfDdkun2dNnDatkQ+DfKO1uGuf8psTbVsw32srSqEMWvdeYHS6dwvPjdhRUbZ3MarAeycGxz2YYvhcesBX2nInU2zFZ0XyYdf1VtrualZki3QG2cb8OIlLfIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724498154; c=relaxed/simple;
	bh=JBqxqtSIy1/M40jsStbtN38SoXZpbCRxEgxtaAO7DAU=;
	h=To:Subject:From:Message-Id:Date; b=Ghd8OvqdJWRJM83TiNbamhije57UwpIzBOg94QJG4yExVo7t/XQ2Q9YTMTNHtdDWnriRjVkFCSRV79JKojoa0F22TGNOJeZrN/ZVd0RjSxRET53YCKelyQkVX1YUK8BefbFIqEyYbTp8QbrZ8Mr9gkgqvOdVosHdSfY4IcErhng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8yXjAIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8yXjAIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9EBC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724498153;
	bh=JBqxqtSIy1/M40jsStbtN38SoXZpbCRxEgxtaAO7DAU=;
	h=To:Subject:From:Date:From;
	b=n8yXjAIkJBbhELmTB2bvk+r1eJpHIWXOUW/jPB+oMEqffJFGxiQ7nMMzRKkpzcRvb
	 wAcK7ASQBdgRXrnTDFNIXnN5AEv8cTIGIF8pZZH10KswFVTj9CTJ7T1tbiAerQfbAL
	 yWqp2bnd2lw4FGU5wsP7KqUVGPqWHUegpf3rscfaFw8tPPUQ2AGU/Vz6HwXTwbSPdi
	 PnpPiQUSYobkMsQONAI7j1aEwgzapGmHni5Qucvk3S+Y3WdKfcpj4t0gcsfdKMBOOC
	 TmE4teE+wR6Of9boyOzyifZ29xWqMb+hV2WOQYb4vuG5tNAX+pQZl63wAag05VpjIz
	 /5PzI7mNobtWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B83C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172449815359.13607.665472913541763160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c3300156e9297efbc9e9dca130ee48501a412c058c17d024246ea077bbcb54
Date: Sat, 24 Aug 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724498153
