Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A442032C
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5RZ/oBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86EA3C433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699655896;
	bh=rwx7VnGDV4tiWOmCoVe5REpmoBfC/r7CO9bVZyvDtbw=;
	h=To:Subject:From:Date:From;
	b=k5RZ/oByoq47kTBWZ/F0EaO/pXJMBvNFtwRP23cXUCPceouRupcKL7mQ/k9fgGVdL
	 F3tPzCQ/Ka0Y1D52e4+jH9SbTsT5PoRiLuNwXLjVMcOQd+E4qHQRF5xUISc5yP7Qiq
	 UC8KVvw63xjrxLHiPrKNbhrbivtUN3rmKy99DqLNFtxfj+j2Inwn7bK97aNGSOMQyK
	 rKPuCmuGS6u839vbp+uvEpCXCtSn+kEJVypnKhT4k8TfGmfc7lmJO/tGYLxwHa3GCf
	 eXJT+BejILx0adpoHO5LHMgmcjpXLGsLzIWhYPdsLKhHZQ28d5ccZ6QVEVM5Pk2Oo3
	 O1AV3GxqlCmMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A049C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169965589641.11703.4580331230569014641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a071b521de702a3e4031a9ee0f675601072e4af2e5d926e866dcd5ffe68240a7
Date: Fri, 10 Nov 2023 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699655896
