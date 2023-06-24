Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BC946B0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 14:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EBEC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 14:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687617788;
	bh=AsI/t3GP7VB/xL6MEaR8iRF2j2fiTEaZvf+VcOzHuO4=;
	h=To:Subject:From:Date:From;
	b=l7lbLfUzmlZA31/K5cyHGUMMZ80CZD0nvt7FUwVgFdnYSw8nEuziqTyyzhFrXnO84
	 yXk8oZL7MDE4G0Wuc/aCRh9FWBsdBhz43IjJy1G2XVWVLTU2Xu9ujAb/ZrPUM0T4Av
	 m4oh0Ft+ZjgITP54Hluk4QLWChwUhH8GnoQZegZc9g+GyRh7aMaT/HSWxHIRs8tYhW
	 Zl4u+jjOIfJ/PI93mc4/FM6PtOo9H061FpDKgJRqXj2OUYObcM5efRlIznyyWFwLM0
	 jVcjtm6iBSBT/jeMx//3pcr0KzDoiCexsnBZcLXJ1MS2lf4PP3gjAbNjxb4jDSt6HF
	 hwX/yps36ImJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE333EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 14:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168761778867.8740.11524895019087395652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8efbd496e69201ccfbe91ef216667aa48adeb02ecf33551a752cdf1f676ef27e
Date: Sat, 24 Jun 2023 14:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687617788
