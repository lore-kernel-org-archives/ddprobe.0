Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3C0181
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 02:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA820C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 02:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691548988;
	bh=u3PM8403GP6smVAMl5hSsb/Hm90KCVfMYzGCN3c7p18=;
	h=To:Subject:From:Date:From;
	b=H7hNKRf021P4mQ1zLNXiGZwgNprC/rzRley61qNIz5LwuRMAN4Sgm+x4XWHaF2Vn0
	 nXbwYOP8Uup+yQ2XJ9iMEkyOy0AFFzLM1HGwzEPN/o3s5j7S2c5HNFyp1bDYIHF9DI
	 ewDazimlosQl8VObJZAFgwNQgvuPCwycYLfUUpLWdJ19jWNrj1womDyUa1eCl3lw7k
	 q0DV4iN29GeOS5Tk3OesoSGuupHTWHwhFpPifNHOnwevpf4znUVd8BgZKtIpAUYanh
	 3cT3xukihJMzD3s+6z5ASAlsAgLzUYdT/4MOIfYd/Jw7nu1SG1fipc3pehbsOkXIJ0
	 ZYLyTh+wAX8Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6F8C001B0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 02:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169154898869.8812.12383164529068106212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9827c45a94235ef053dbee8ef50c201ee5c883f66821432a8aba195a094f5126
Date: Wed, 09 Aug 2023 02:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691548988
