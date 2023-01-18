Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F8E3205
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81104C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674053487;
	bh=FyxwjD99tmKZNwMbKIgOyD3RPIeN6DF4LLznxNLwyAo=;
	h=To:Subject:From:Date:From;
	b=acM/WUZrG6VHrqYrf0GfEv41cpzhpeUCtE9/C1kd7ka+AhatUa63cveSNLhvyU8YB
	 vWNBU5C7wbXwE6OeAPYXJXU2rV3ux6UVJaieU50BuNUPIMlwed2RMBrEJ0tBiPORBZ
	 4FT0foakW6cGxxJdf+SIyxhe+Ip3TfliV2X0EcY7Y7w+9cy78bj1bhMFshesNYJLsb
	 FIhTX4vp3jB+//Tgfz4l8tai05D8B9SdexXJvWibVBj0gmgWPPKlKeOk9LiiCh7Jq+
	 bb/wqGPASNhFSwR1ylV7kjj66LlW7sm6OLS154ofSTZDgzDRJX31ljQvBOyxaLFhW8
	 U13UUJLOBzdgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68187C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167405348741.30415.17682190626312000915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0fe1d3eb2421b74007911720d27d80e50281dbefcabc13fec23320fd24c8372
Date: Wed, 18 Jan 2023 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674053487
