Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11A41852
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C54CC433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673861487;
	bh=wVJhpvETm5EcPIs5hv+nfhbWdPC8mQ2RkhDpNTD7Mj0=;
	h=To:Subject:From:Date:From;
	b=byGwTzl5O3DUZv3jni8QCd6n3k88WVxExghAba+Ltqb/nomnKdInPH7Mdcfk3RZdl
	 7TwCx/0UZikPYtHkoxAcujHz84X/cT3DDwgJBaE5gNCqLatgbF4/ZwbcwIQPhxNzLF
	 9wLSdc9m22DFYiacbltzknNWZzSdGlIVpn8ax17RX/RK2uVjgiHJB5mkA44IuxfbYQ
	 CjtslFsqkLktgKgBEoQHMC08z4c6fvJoPO52FTJTXWa3f7tMmQwRHBa769RkI+jY8R
	 NBa29SUexTsOIypXKVjxQWzeEa56IrYj+MPKnXKHHHiIin8YKPIpIj5FJ7rV7a2ZRQ
	 osM1wREwpPHxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73B25C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167386148746.9926.4060713732653178279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47bee36e824d98d1f8f19f9f57ddd6811d1ad9e7d2affba410cb792ab7316d1
Date: Mon, 16 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673861487
