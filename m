Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D317B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF81C433B5
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666054253;
	bh=TgfYdiWyKm4kfAyOtGCoK0qfOznocDULzJLcD4+2xEQ=;
	h=To:Subject:From:Date:From;
	b=MK48g1n6/nwuxAx4I6lyy9qAuiC03OuItuXEMslI2jtq7cyUrfkeNRoc79y9q9KCg
	 nJfmGnOhaVtu36PvDUdNFCrN/VikUjhfmUg4Yb+eXbs+3UYsQqGf2+HzIBTgok7Xag
	 L/HKFoM2iD0swobDVRYWuI2MBgCbA6h9C5Vc/oUNktA0thH71OmLez55HQ4Ij3iZwi
	 kESiGgILWqIK6N+ApaD1nX5g+4AQ8NEb32oOtFnKy5NUsbmPS4AwiQHHf1KEQw0wK6
	 Y+Ys+VYRlDMG7aM9morY2ZyDOuTWAlau7/htditWGyp2gDZr+KVzlQE0Jy06scxaMy
	 LAGezgOfs2l1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52334C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166605425333.32198.18083181288624501548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d0e1e4215c497be51405ec3d0cc521caa788384b80514591d2fde55047fa73
Date: Tue, 18 Oct 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666054253
