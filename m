Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97162560
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6920CC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670146254;
	bh=kI07CYhLwuOFZRs3uZZqTPxuR4KsAbsMPn3ewWzFx/A=;
	h=To:Subject:From:Date:From;
	b=oZfRUTHTDvkj9NxSeUFvdDGaFwSH2b/3gProUyPpZ/rwRR3gLbtfr+4SJ6BP9LB3J
	 Nhl5HiFwe7nTb4Jq+uZs5RvlW8JSv+GYoQRBzzKAvkCAGL7GNIqphpN1STYzsIKzQz
	 n5dxSVjeRyQN/nb3HF5JVEn3+Xd8gAbIe0E6KYxg7fMVQViBpDfNNMqyQQauxvUkwX
	 XYpyo1ZYF/gdF4laelgIOSRWkupKnqOgFlP90LoP5hRrsV98rlNBIrH3ftolqJ47+/
	 tENoO9PgyrkodL1fIbjnrISvIVcnxlxCPZeNAEM/1B6JWqjOyd8WIJI4zXAJ5sCUqr
	 bCr5QzqNmsX+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F159C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167014625431.26994.11114440057789850759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6a6c8a59dcafc00a37aa977b27da1592a74ef3af4b4b5bcf096ecf9f4682dc
Date: Sun, 04 Dec 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670146254
