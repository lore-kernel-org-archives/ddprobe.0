Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381D133C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 14:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B5BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 14:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679926985;
	bh=8k1iX61cJeV0clL7tOevOAhrVhm4GkTmcxRVRors2bE=;
	h=To:Subject:From:Date:From;
	b=jz+kqpPm74ibuD8DE+ZCyQnFt0IgYkFb3bRDsvEOwKvmF3Bqs66CPQdH+A9MgrNch
	 wPnKrKIMPk3+GIOQ8HhbNSVUjF10Yxpw9BqYSehUaBPD6d27ov35JnZ+XVms/SXX/u
	 IeOKONk2f5F7Ycc/BN/H8XCOOFG/4HB/QnMN/R3PhfpLzpTCwSpQ3js3MgDx93R/NW
	 VYkLLtauNuf97sNR6gnDM1Hmhoa/kLrb9/1NFL4mGrX6PRVvS91aKHfMiJApQddxjw
	 qgOwJCL0Q5Fu+D9H88SGvppdd9e4PCHqJjCV3E9cN1c6/P/Qu7G4s8TErRZcXo5lYL
	 oTiQeaq6Bxctg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA934C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 14:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167992698575.25286.4593158060359342574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226f8f632d1ab684f153b346bffc297f1cc1ccffe412c2a65cf6913f1aebe493
Date: Mon, 27 Mar 2023 14:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679926985
