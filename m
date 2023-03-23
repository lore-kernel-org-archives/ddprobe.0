Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324612CA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 20:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC42C433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 20:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679603405;
	bh=hIAQ3J0l/xg0SFxezTS37IXuxcBMoQEc3BvRmATCguE=;
	h=To:Subject:From:Date:From;
	b=tbzD0KvY7L9p7GfWqaimsgLkfBwOuV1SHtnKlw9G1wm77jkAXYHingDdtgxniXKo4
	 a+V3Nusezs5Uy7FB7SBDpQQslqvTebE59KHJV2xh1A0mPAJNRkpC1DkKqeUFQkqUm8
	 5EWP8WftR+mUmslWIXgeTw+SeqhobCLKubCBKS9UUP58Gcbznynbe5sqctlxj+CAiq
	 pjTrzHR3Qbn9vstb8i4KYSTjbSMxdBt2TrTwnYbL8LMX7F3D/4XDjRR0FebYnD6MKu
	 hpavc2YMy0geJSxaOAQgeOnHll1LMLjHX/CnSKK9rZBiSFvTcwnU5OFMAm0/NvIn8M
	 z+nFuLM+grvWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE71FC74A5B
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 20:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167960340576.4513.560291304998319917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c7384ad93b9bc2199a297c3b2b8a85e8263b51fab7ab0b4f27f995fb001751
Date: Thu, 23 Mar 2023 20:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679603405
