Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7EE7E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 02:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C591CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 02:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692931448;
	bh=KLxTEhS4CI0DQrvyosm9CFftuqVlMGB7VKUAFnkIysQ=;
	h=To:Subject:From:Date:From;
	b=TxtemYiePHHZ2uwUoFsyIivzgjy81KcxNRxJC3arTr4JsT+TEyuTg3o8ZYu1LgCPM
	 82j8YBGX7pP5MPJa/H0qXFXZDuWwLbzuZM7R048hS3LtAYkcNz3OuOVr9zL7ZZcpTN
	 pdCdvAcxeRicVNknypwZCtK/rqK/uvAMYVxwKek3UaeUoAENdmC7U2BUbV+Tm80/fJ
	 k9xuH9xko1hPmHS7/lrcSZcriOQ0lpNIUzME6PJYNoYU8nP+1+AYP1ayxFQGLuGss1
	 NP1aC9YQkmq44sSbh32UwzIWKRkj1VGB4+wGyIX5Kkg6eDdoEEV+pcYhOthQwxjSYt
	 WfKUTFnIO2JAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62D6C6FA8F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 02:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169293144867.9488.18431391020204203625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62ee909ad99606f18b191bb2cdc4376eba3193c569ec13fe3baf8b081bb651c
Date: Fri, 25 Aug 2023 02:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692931448
