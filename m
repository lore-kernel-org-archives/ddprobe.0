Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC917C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87EABC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672654287;
	bh=D+k5HsuxPCe3t6sXA465DUNdLeOUo52NeFEml0JwNmc=;
	h=To:Subject:From:Date:From;
	b=Z6GhJDLddtMS9KhTnFkIv+Ey9dznZYcCpxI955RtubJp/8oTkg3fWlXdR/EZhYVK5
	 +CXXg6BVJXa9rPSWC5WulVl3Ja+fFTwXRZ8Geh5smoUqTSmAQS0KNQiSWqrFuoWBie
	 27yK7RJKI5slPxf37H/dUR+iOmBXgTAAgq+ePq+fBZXDZSGxMpqIzizjUbmPhXlzRv
	 H/j336FpbDTgGf3bzQdtjw13ljXPMVf5IVjb4/11sxGGCGJaND0UV94qdMVPT6403K
	 4eqlWDK5r/QIxTG2pruitOHD7tRECdQrO9CpkneCONUxZ6hR1Tqa399omu4oYdcHjQ
	 Wa8TReLVAuNoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D2A8C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265428744.7464.15425401525604587633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9f16a81d885027c1f41f4340db1790f09f82f70f0ad6ae6c62efe4ebaf3ba3
Date: Mon, 02 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672654287
