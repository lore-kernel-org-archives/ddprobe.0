Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25DE23A2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B63BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665473453;
	bh=GrScxmGWUXMX4H37j8Th0y6DGP7lkgdfI7G+2ghkK9k=;
	h=To:Subject:From:Date:From;
	b=mSl6Xlp7OOBLapn/RAazXTle+ohP6Xe4AE6AUJwE3SxwqH53aG0QZOQH4DlQ4x2EH
	 PHxnz/PWWLLNE8dZTYQrFhzn5lWWk9sFeXzqJKZUxnqwSdh0lXlEN6VwsC9KZkmm+F
	 az/uMFQr/ymzNT2dPXkDShASlSEnJ6vvxeR8mNyOGL2LGUq1KwdCKfzCaRh2ZVpyF1
	 lDw2nnVpoeuttQczgFWkrNv1NOa3PI2O1/fOOYDAgpxMtLzrLVAjmdleMrquhKjz2S
	 JO3Hxb55pWubEV6vxWV6HQ5/M+sXqkhfuS6ENow2N9MVYiyAasC2ptikaPOmBMu4s0
	 8mHCYNxr0Ud0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E273C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166547345331.25775.5150821092936959467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d0a8cd903b1f72dec8216460135bcb8600565504714b64fbdb1864a86762ad
Date: Tue, 11 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665473453
