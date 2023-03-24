Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F48417DB
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 03:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA73BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 03:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679626806;
	bh=5dpThDDEQipFbc1M6mzdc1HPfhcfw0yQQ125Uvl358M=;
	h=To:Subject:From:Date:From;
	b=gwCiVFDoy3TGHWA72fyOSu1+tApbiffu+B2CbuIs59a31Hn4/jrs3tNJocLq6/MVT
	 ijtRy42FvF4/vZr2T0ZN10eRh/cW7rHL0FCJOwPKlHh9Qle4UlP9iQ6E+KwtYsysA4
	 gPyRYCMzzxExCiziqfjU51nmUhFZhWW8xYe2ZPLEi8M/7xtk4NdAd0kg0MKdLGHGXB
	 r80bk1KyQFOywwcY4gr+Sa0n3Xb+xjkEaaUU69Jm6sOAN6M9XwybhQrQEtG2EUFPHD
	 2yaaRyqOdGUbsxWuBbcDopBDC5Ffl5551zfZDKpek/RkUwi3ckACfB0y80P1txTVJU
	 flWIfhoHAxnbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F01C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 03:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167962680575.7806.10597432084470278145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e58474e4a1ad47fc6a874ac793bc5f1f9d0aaab84b2762e9d6ebda8f9e0b95c1
Date: Fri, 24 Mar 2023 03:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679626805
