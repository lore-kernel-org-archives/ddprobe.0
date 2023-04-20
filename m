Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F07515CC
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 00:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF76DC433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 00:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681950905;
	bh=Q6/MLbl/ROVU+EjKwZpPchg0oDfN1polLBi+VQNVg1M=;
	h=To:Subject:From:Date:From;
	b=ifONkcrwsZkOZpyJDWGCJCjATHbnnIj9Rhk7ph+PCVI++ZVb6MkwKAAdfFC77Uvso
	 6RFD/duew+Go23dH+Sb7O+BaNMRfJgkmSikfazUCKCAXonpWqq0ZjRweNsD3zUfz6r
	 ybjark2NNXh0Amk1Wz3SivlIXbot1dxTkGZOh4IW+ryOCCsp6NBBh7H+50bJmGV2eF
	 1Yz4soKaZUnoW1JLZ/0hO39mDrunp3e1Nvpb+4FReWA1saKw6Vasg5oKcTgNBp5UDU
	 Ts7t+E2BAm8AZS5JXes5ZkW8r1H2qZ1BN/TrdiMAWRwZ0j9C9AhYETQVD/cZymA2wj
	 bfWoTHjx9CR1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1ED3C77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 00:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168195090578.19295.3052076507418869771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796a890e8601ff92b16e38ae5e4084ae03752d50310d8351172a98215c04cc7f
Date: Thu, 20 Apr 2023 00:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681950905
