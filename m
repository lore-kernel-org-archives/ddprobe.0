Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66AD2117
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F360C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672004487;
	bh=j2Cv8Jnjcn9bx+MV8q6h0ueNYlPH8ktFhij7fZOUOEI=;
	h=To:Subject:From:Date:From;
	b=mpX7FdgSiNHfG0KKRFT4svKoTqdf9ejGgeFs/Ai9Ff4fXf1jW7gHkSFdIa2eLdXSQ
	 0R3Qlzt3Dio+iFpkx4zP1D7MILVSVHF3RO+/kQKxRZUIjgB2OtvzvcWjKfup/N1Reo
	 5CujBuSQxoD7AyOQoOsVFnppOCiThX2kP+KgsqSxTmRnLxatDyCxaBMV/41AdjoeIx
	 ym9Z8H7ac8KU6VcRtgPTaWkbh+B3HydX+qku8LnJVFjJXzlPUF6tIMEyvSGkQlD42+
	 tThBdYKrhxj/B3NyEnfMOEEsrcgqZI4fMMWxuoD6C7R3Z4Nv0QrBMp5hDGhZcGwTpy
	 goP6UlQ4MyLCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6452FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167200448740.10050.12795689141993777744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddec174b39e1f37e7eb443005108aabcc0d1e6a9d6787ef07f971a3efc7eb00e
Date: Sun, 25 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672004487
