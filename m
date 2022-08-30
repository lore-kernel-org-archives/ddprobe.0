Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD00A5C94
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBA2C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661888453;
	bh=CouACnGW9pAHpwNMpOwSgDNQ78FpzQIDkvMJN3zseXw=;
	h=To:Subject:From:Date:From;
	b=ZmHZyFnLjR/AFIGRYDEQiT5uPgeek0xguk7xgMUIhIdyM8MoHn8kFQY1UjADhYJv0
	 UIV4eNXQF5H/4mHNBTW/QwuGFwzqtY3e/XAQrjur2Jtu7mFUeEpK/5QEBi3r3de969
	 ttDSZdNrnVL6ySAuWiOnewsJjtgmzf0mCeZC/pg6EEjfNLZ8ZNOsgmLD1ok3y4nAx1
	 gfGveF/oiTGm8c479B/60UggfNxJ597U4oEETX+RVqVmmQViVZuEjfI82gJXvuFmdo
	 VupobKX8dGnCv5Xc2URQdLvfZr2zsYWzjVlzRHl5Uh5aYjpeIBtuASs0+OZ0/JDrpC
	 D7r74TSqs141A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57183ECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166188845334.4869.6858394445941373314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7046c1b6ee0f2cced6fa00ab1a9707f0865e9597500caa78727db6e140133255
Date: Tue, 30 Aug 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661888453
