Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A634C78
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D32EC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668435054;
	bh=e+LQEvWga+r5BjFAe+VrGQhHEcEA273pUko/hVA4Ads=;
	h=To:Subject:From:Date:From;
	b=SNtXXqmLYkW0yh6NPVaMUjssHZgedOcADVbKAuG/GamggdeP3yzDSp6+IdBIsaxKp
	 ZaOrDTOPlQPuMZetEBydaRKez33IKchqR51DQcIrza7jBAun5v2HDpx+Igshd1TC/b
	 jgFQKZ+/R0r8sJWSmxHjquCNUrZC6wMnobdR9SYx3ryUG7XOys8z/R3rHrgX4PHe+H
	 2Bg9VxL1tboOUphZlwkHuaBOPCMgG8LlSxUXwPs9sOr1FwFTxszRe5hK/t4DZ47d44
	 dvRyRHaAcancvDkfIP7B1m9kM13hTxyiW2PIl7FSFD1SIbqJFByw1kyJnkPPhtF6Um
	 Vrai26H702YTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54433C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843505433.27386.8349801007699602282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e242e62dd0e34bfee986bcffe93ef7025416520822ccaa6e0d3e1aff0c289e40
Date: Mon, 14 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668435054
