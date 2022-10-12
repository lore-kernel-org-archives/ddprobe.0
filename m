Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68F93C00
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A89C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665604853;
	bh=eL4f3GPe+Ooi5lKAsI+qYLpCL9hgdl096UughdL8Fm8=;
	h=To:Subject:From:Date:From;
	b=MIwJGh4+CxZDI/Q73kzfeeKGkjK2j9cu32zj06ZvO+vXQdMQHQTgDN3XuQA9ZS9Ve
	 +7npZSt0B18hwj66Bs/swABaFTTkGW9j03GkSuNpyd/jumEzzgBnzFaojc6pZrvtyw
	 NpsZtqyVwm350HKHhqwqVEtdS/jTtDh43miFwowiiwkzc5yIwbcF2RLfcKqZCILDo3
	 uhVmnycNHVXrdWgSpa2CCo9zaSc06hjBaQdSDV6Wu1e9TXaZmuLT/x5jrTjjSgWhAP
	 uDHzc1XZgJFCX3awd5IE2gCTE931wg9PfHMFwJWqxMuQQZ7h6IUE08+h+cS4uRiyAC
	 j78ZWLemX+fUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7D3C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166560485336.31011.5974099357470113932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ead80b735d65bdf33ad59addc7570375f10140b59a259f27cfdc91cf85d509
Date: Wed, 12 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665604853
