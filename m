Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358856ADC
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 15:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E2EC4339B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 15:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682436965;
	bh=154dP+b/gPy/BZgxLRf2S4QiGp6QujU/Lfukd9RPukA=;
	h=To:Subject:From:Date:From;
	b=Yng0V7w6nMgjLO3Egv0rBOwdXP/pJ2AFLsCb+RUvYPLcFCrk2wDqs0oQSkilKXnhQ
	 zCXaOAdvnGkLUxw+0jotFzdMfITfWW89QMmxJ7G+vBG5it/shkU2oqR2V4PDhHrYcx
	 89EPle6N66urQKGkHO4cU7aBG58drZojCyVw0yPgDPjNCcqz/UfblrGXKWmHg94w5Y
	 oi4UKfSoql2UU8z5yjG+aoKpkx6XMHW9mF6znC+mow1TsxCsvZYVxmWO6j/J5NSbhV
	 eGJxF/ybUrabZXEGwihGiVVJqfK7ovAZQEudfeOCd5knzCF+4mr8maV3qHBc2d3TeI
	 pXoh3RMsFdQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2A3C77B73
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 15:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168243696577.18008.7675450964237076935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bef66ec317be04ab2c8e0722c0a94e66d3a2d7c4a69c24416ad52f27353bb51
Date: Tue, 25 Apr 2023 15:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682436965
