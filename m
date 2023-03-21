Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE4C7C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 03:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE61C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 03:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679370485;
	bh=oS2+nGkW3tZng9orMnwqKgUxi8VMWdYw15VKfD+TzYA=;
	h=To:Subject:From:Date:From;
	b=rBbYZaV92yHSR5jbv1hFM7ZCCFBEHTs67GYiZp9ewOH1DAwvIbxAWVzB1Mymf5x5O
	 V1P8ETw0q6029VpdOwe53N9Tf/Xpmg/bMbuh0tb6LlmmnXNng4Wp93FGBYJyWKYKJL
	 3Aw1pN4LdLMnWU8TGV3B/D+zXa7UWtqljorLmbY7LWIa3PIWOFC8nT4LftCABZeJ14
	 Ey0NGCwuyE2BRDqFYzxfzl/G+iJOFLYeg8tHUf8OB7x1txJME8tQqrrrYM//Jw1yru
	 CfGYcTiJ3it7Z2H7ge6c9xgkJY+dJCP9+Tsbx42FdVw7nd8RIKqot6MiAG/O93OJY8
	 iSde2e/gxh5JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE54CC74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 03:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167937048575.27501.13090451644243463581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2f086f8b5cc5c90041aab841cc7cf6ccf4b911f56359dce673da4d0d74b5de
Date: Tue, 21 Mar 2023 03:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679370485
