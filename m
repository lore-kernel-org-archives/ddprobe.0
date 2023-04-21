Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E006FD7
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 21:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9674C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 21:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682113145;
	bh=F3roev/f0GNmVb14rEW7433KYJkGevO0cerAQtgqO8g=;
	h=To:Subject:From:Date:From;
	b=nBl1CRjOHj7QtSbw1hoIGFaSetJxdysxCdZygKQJwzNQuYWw++Ek7jdnRQilOp/L7
	 qCogpA7HhNAc2wO4zKL6o6S0UU5fl7xEhvEbPn285dHwINPm4J/+j+QozZQdD5OELF
	 fbbwojL7+NpW2HsGg5HsUTMSjK1ixoP/M5M0mGNnGMnlItoJRSXQVFwct3hxgEml2h
	 YKGNCCIQ5nntqCuibvMmYOnDrjk9ZWLjG+pf3fV9FWjUUIFwkUTV9vcWkDeBA3tAVT
	 Hkv/q7RLPuxG9qPWgILgmtkmYt/K2N0mBZsLuJkjtpQAiAqcKotJseq2xmsSCntWJG
	 srezhcUYbp8Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC599C77B76
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 21:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168211314582.7348.4078127663738678761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15099679002ab0b038b6d4aa52c89f8840159c73aa805e917caa843dae06cda4
Date: Fri, 21 Apr 2023 21:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682113145
