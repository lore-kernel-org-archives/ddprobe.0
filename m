Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32F07B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB70C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666738253;
	bh=wD7kTQnry0x8Rjhdpq3yGCJFEYQ94A6QhH4qxJIPDCM=;
	h=To:Subject:From:Date:From;
	b=ui7xe8zEEGx1ul8IpN6mxOtZkx7u6Fv4miPr+jyOYOF9LL2M+MH+D5/4UOSL0xbBE
	 Z1lytdcvK1+W3LDlFweIv1E37/DunxWjpe+faQExi0Ed6KYiluYaUCZwd9BOLmf4aB
	 KJx8BsjNYXgZQ8i5ze4+mRrI2MDe1HLG8JxKmrk4kmtmS2dShWeBAXREUtnPFS1tzG
	 bRkTQI54gm2IG9EOYaFoT9IRgVDNTGbBDaCjEgQKuZVKRSKxY0BSQEw9hQfp3IWhJJ
	 vsqK6sh04A/W4mFEb7PKs/41H9iyXrzWTRIMaIFK0zWxxpQk2hcKANoMSZn0fFNdo2
	 D5PWQnU+uD7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55032C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166673825333.7516.13605165195411932766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463e2d836eaed113b156bec1c69e8485cc3f89537f2c1c371e163104ec32b092
Date: Tue, 25 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666738253
