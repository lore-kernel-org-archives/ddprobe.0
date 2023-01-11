Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D4817D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 883C7C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673423487;
	bh=WHpWbkgDWj5rzuDTbw9w1lWpApIIvjlyYCRSEpKQCkM=;
	h=To:Subject:From:Date:From;
	b=e7Udmudtx7Qlvst52y1jMBZNGLoVR1jyg8TgNXMUc9DeLPX65Giq9xycj5+julONx
	 Fjrr2QIFB0fXQUaimIa+vCdAjUFoZiFipHVGfc9rGjlIQ1s3UemLEPgYj8x94YUaIb
	 oa2IMDV8BshSwCTXXtTcr5twUTwZiBW0L6wwwXbI1g3XU6tZCGgDpn+m960KGWiAWl
	 MbJU3O41eNW41/z712xS6Q5Gf9fIK0NeFCKhYv/dP+f6HICP1Uu3/dJEpTfogKp/zm
	 l6SNDZi2scobMmv1VUwvIBe8HzHBnNrkviMnV6BV3Q31qaI/BUWTW6e+r2Hgyc8HPh
	 PW6wElbmFtxMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E00C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167342348742.11634.10185873480588093918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e08355c1db8282d9ef33fd21352922f9477a0bf33f57b6d4e19b7cf3826a50
Date: Wed, 11 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673423487
