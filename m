Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DC630C621
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774841694; cv=none; b=LsJLKh2Ait+7xzNbk4cCshldfgjDW+XY0qzqhb7mgaFpzEv6vgKnHZhPjN7YMaa+Zq2rZowc+1BvIQrjxUSNZiYS+gS6/H5Hu+jWybGjC/ugIZdLB5WAfoaOnprU1Dd/y0LId10zOO7gE0kONDEntOxPJDrDRSAbLdBq1xLnzMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774841694; c=relaxed/simple;
	bh=wmXdJifBjQSgyzG9u661KAE3vxb7vQnHV3ohJfNDjF4=;
	h=To:Subject:From:Message-Id:Date; b=tFEmk8vwvT9Ectl9d95O7fCTVHvYiMKZ+LPmowcmhpNHfEfBaOxugcb0S2+jlEbAHAjZ8dW6g67aDljyrABZz6d8p06wpsEM88YlrWum6QRCF6wWLgOTykI4O7X9Hmjh15cJTJpWRO3iUItutIcFHZWggX2wvHAjBnPMQQkblDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSzWoOPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSzWoOPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62FDC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774841693;
	bh=wmXdJifBjQSgyzG9u661KAE3vxb7vQnHV3ohJfNDjF4=;
	h=To:Subject:From:Date:From;
	b=RSzWoOPW6STPVc4qjAVCdUxvbwIdtrzSyhKE3rQK13Zy2sC9MWi16P/SfO664hDeK
	 191dw76BzQzGypWBEs0Cf7Ty4qiS2ZUdhmuc4IFkNFjDiAf7YZS0cD4IA8apuXFcK4
	 yN6hNPOemAZstU8Gx0ITRx0Dbb7fGKqRuSPqgG+tBKKaoB5J1Vc4Qb6GUV3bB3TelJ
	 9sf2COwkMtuCN3+P9G2kZnDkx0RLlzBiVWU0wu+f6vguQxBs//ClSiKSnRM19Ra0/Y
	 rx88UvVQIpBtV+iQ4sB/WQKU4K8qGL28QW9hlcgaLyRFij3H1ognU0mBANeb7o9tDW
	 PEh7jzKza47+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95078FF4934
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484169358.8197.12728855113234040122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eae38c73775cde2cb5fac3948f03e0fdaa2f86d30a2bba640587a85905b0749
Date: Mon, 30 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774841693
