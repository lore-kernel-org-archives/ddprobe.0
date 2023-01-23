Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F649A4F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 09:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C43C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 09:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674467525;
	bh=Xi/XVJtwL7uNKOcBHpTQBTHeKRg+GbJFiU7huym2eeU=;
	h=To:Subject:From:Date:From;
	b=AHgsQHICTJADrWtWIp1tOUVZk+dLe3W73Gk0EeukFuCLeU3dTilxeF0g82faataRh
	 k6fE+CANnfKoOqgi+sfPFJroFgHdT6HMtDvzCvpB+fnXr6sg8QdNAisoOYe/wsRSkx
	 Ae5imp1Xzf65oD84r4AgKfPM0jkKNk27ifq0PcTMAlkobjaQHS1qyVbGC/c726DqO/
	 n8crOKcYGy+F8/ayzPc+AhwgmBnSNZeOsTFIlHuA4pS3VKbH5YVFugTJi8WhM8R8RY
	 t6e+cE08BkZHSTjr5JU+iLxkWZmGU6XExT9beCEAwdnqH/OGhfXzEd2gdE94RaZElG
	 cqBZKNRoPRPjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD202C25B50
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 09:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167446752575.9240.4123198078318177057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 835b3be4e46cf940c6f02557dc449db7066874c352d875ca985b7bcc82237435
Date: Mon, 23 Jan 2023 09:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674467525
