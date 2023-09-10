Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603FF1C3F
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 23:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFE9C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 23:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694390048;
	bh=aErtC+l36ReYBEspH9izX8Kn9/vCUpE9AwnasCARZiA=;
	h=To:Subject:From:Date:From;
	b=dQwWAZ16jfwiYGmtHiwlXEXQrJw2rYbh5+b5SCTdW12u8qJlHTt0peejrrUtsTxmd
	 d0CiUtohZUAKNuN8MtFTDBMFXTafFyaGQA+Ndq8eyqIu2OSrqXxm7EyCMcicmlOb2Z
	 sIwXwmVul8onRekPTSef5NPnTmTDlHRaVMMHcvupWuQ4J9mRUp0OKEznqwq5fepQ5i
	 kFqcFO0BfseU6NQXlnNDpygf7oZRQVImApVg7NwDwHXLDHy1P7i6yi4/kKTMxrpKAD
	 MY1u6LKFc1ZMT1XCCfHJ7T+z+g9xHdnUOMkBAskHa8l9K8B/7mP4WzzNAPghoFwJ2t
	 dgywoOJ6t8ySQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CD9C71153
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 23:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169439004874.7430.10070223781037362942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3fb02fb5608aa5db06807ba0e33cce7889c0f59df9c016241bc5ae060f0a1e
Date: Sun, 10 Sep 2023 23:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694390048
