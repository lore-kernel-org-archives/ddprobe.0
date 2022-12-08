Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD553217
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FED4C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670523687;
	bh=VBSA5xA318Q8EhTXzDJBZutB1SiogVwdchkoSM8mEEc=;
	h=To:Subject:From:Date:From;
	b=c8EZUeQZMjtkj0BfvDeIN14V/9KrsQ5Mb6ShJK1WCrd9/IA/lzwdGwFnqSlG1sot8
	 kgQVd9/7nRb3qYvvcKfo6yZOSYc3LiLciZPOlzuZ3jZPYWjqu7cAPNY6PnW2GnDklL
	 Vuj31nhTrRV5RX9ynwcPCwF7D7cLcl2WgmZLKEq8m0n5a9g8FJTbviJ2VnmlqXAXWw
	 84ctHZNZqXLQ/uY8PLVWAqz7MlXzZLz+jVTXgb3r+Ckk6r+3SNrrNhuFykc5Rz46yu
	 udlDn297Z75rumpqTj2uhZlfp+Fwts4jxoIXR+UMQGscNkmhql7bSkVB88slJxSbuu
	 ui1E+00sOyO2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6416FC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167052368740.9636.16309348748469610328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9f3989239571eda60501519117a557d6e1af8a09d7b5c049ebde784ae055e0
Date: Thu, 08 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670523687
