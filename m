Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE5B8C09
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 15:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9CCAC433EF
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 15:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685372525;
	bh=D8qzgEdu3TuLUnjnFykcz1VJxJrgy2zN4FA6wk6yswM=;
	h=To:Subject:From:Date:From;
	b=RDe06Ptt8AiQ7gOwWAK5c0nNfCtQ/WhWQk84PJAbx7t4vxNu76UQ06ZShSiQY2PjF
	 uo5+Cov2NxyHe17NICMZd3BKeY7gQONYtY4gUzRLOumCXr9lNSHIpdThLzTe+it/fj
	 W3RX7DBGyZMGBn5DqbvoMAQ88ZX67U1RGT6BQRVwYhzqDy2YFanZmam6xdLhX1hAFT
	 gRH5PqLl5p+KMN6wbgd2Pagdxg+wRMTBP3/PXDSAsJAF7eM3XSjyl6gYBDlo1IrlJJ
	 Te0we2t9z3LmMNaqs45smssSmaDkKBsnIOqHktZ9Eea9H2gtEOnxL0P3xaAe5GysM3
	 DfCqBNTpsu1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA7B2C77B7A
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 15:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168537252581.9339.1308402943361187380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9759aef079a11ecd5e16dde4b1267872b3a33de46a06a7ccb0ba97ca59fe549
Date: Mon, 29 May 2023 15:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685372525
