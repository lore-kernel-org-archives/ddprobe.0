Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B83377F32
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmLqFZjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F40C433CC
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703197696;
	bh=86GfYDZ1oVWu7gkItER3jG+rOJtIS4yeFurfzhcTEJI=;
	h=To:Subject:From:Date:From;
	b=XmLqFZjW26MRRMKXQaPCAFxrVXPNkCxPHtI62Y0QhwD15JLWI7q/ubjojYPmNs1Hd
	 piZk+opAQtI4kXTasEMjyDIWFiHdcmrEV2c4jKJyIWPdn2RYUAa0nJiOBkV+eiI5uW
	 oi/Avnk8QvnufO8GURHXj06utfSGcklvvMBTCp1yUCMfxA+FLJYQtsb1oujbfjOY8K
	 goCa7FcE357fYNSBRVEXLRHePU9X+mNG1iUEA5rv86zINNWfo17n4Tr3+Q3wEJrOJe
	 S+PcOxtWONhzk9r942jqfactcFU6r75QWH5LUkXzyd/10eRx9vBThwJyIObBLiTqWE
	 HUl0q7ZNsqCUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66016C4706C
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170319769641.2505.4567827329714270568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df94908416308418bb94207cb6789a0c428a738056cf053fb717339b88a0475
Date: Thu, 21 Dec 2023 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703197696
