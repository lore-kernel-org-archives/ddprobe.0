Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA0BA2C
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 01:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 140FFC433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 01:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683942966;
	bh=NzjVtAZgfh4IIqEjjkQRSqhnl76ZDeVKF4HCox56Lsc=;
	h=To:Subject:From:Date:From;
	b=SCI5cBhiIBZqY2ICzQK314EAeQu/s+gCY1bw3mWPUrIAOIn6jYsy2bEwt2a1qFPdC
	 yv9FVi1zqyYoWJ49jHcdPt4HRPLsv4B2s6J/pDmHEfBUuy1gFVjOE1RpCVMhPmN3ow
	 /ToPGHWRS9eiXj3DwuAXHBbkXAAC+MZEuSHPVdS3rdmXSowjW9TdG5ru16Gckc51hh
	 2vn6Bgw55hJJ/ZVLeNjePiijLoHUUUmDis+PBiy0Xhx9XrDKfaOORv5qUBLpKkdOpu
	 hRgwG3CZILYSvBadSMFaE+fDi7D/4sQMNyJRWtxpEvauznsRjJpiDPQBSdw4vYJE38
	 qPobarrOwhmTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED63DC7EE26
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 01:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168394296596.26826.3890431474364697211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14eb6227c8fd7d46222d363a1bd091d997f0ecbe906b762d39b2a9578ec99379
Date: Sat, 13 May 2023 01:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683942965
