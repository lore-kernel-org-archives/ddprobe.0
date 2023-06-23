Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7508F100AE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 16:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39F3C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 16:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687536788;
	bh=T/fy4woMN+g5fyMK8MwOWe+E4auDNj1xtHGTADPE++c=;
	h=To:Subject:From:Date:From;
	b=qEKTj/1/CYJNYqeaXP4z65CR07tXoOL0JFtDxk46iRAELqRDN705+arQL0e7cvfEi
	 bTLuG+K0mGXv/+N69JXz9wglBSJp1y/W3BtC40fHHhDf+4UmuJo9ZxZXf/vKUV0Yie
	 hzrLLBgQ5U1S1uC9opMJgkNnJMHmo+PBWvivLpUWQhw16XDf1/3lzsQfAyGwVacmIf
	 67eDE/plu5L7tYuwvNrnEr7uMSWdXaLIwNPx41WdZjroLWovAYjyeu4W2VrriqbURU
	 2XJDaUrurl7FrU2DrfQYbnzXB8WIRv7JU71epXkEyAtdR8FpQmVjG6Ii6aB9OGgKaU
	 2GLAi2aYhe1TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C67EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 16:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168753678873.19145.10313462318720754921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17eb64a97f20670fa91b1aadd54e3881e4f6bf88f7e8f151674511ac0e33ebb4
Date: Fri, 23 Jun 2023 16:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687536788
