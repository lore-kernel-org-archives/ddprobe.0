Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECFF7E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82DA3C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672393287;
	bh=1R0ml1kjwk+PTdI2Domf4DvIH9Es6aWQV6ZmUEu/laE=;
	h=To:Subject:From:Date:From;
	b=frIUcrG3Y9eHpX7YbhDbc28qEqWW0QVy2Ot4fQiI6IJUnHjk5y+IUEWH2IMuQsA9z
	 KqKP836VJfQa4A0M3Pu6cUIaExPVPtNXH1EUp0i2Lh8sKkn4AmlPtZpUCkmhaFW+W0
	 AaeqSSiB54DJBtzUuk/WquVNHs/ZNokoFGGvFE+ogphmftWOPEQvpwHiTWPpZFFpDc
	 QRjTGs2P0YaDP3FfnZg9deIhqOUcZHQcuUq5r7lE4bKQcQraYxcMCFPs03EYTv0WBx
	 sKAM9G85pE3emczw8TIrCpNCecSrD+0Z47B0qU9NeywN0ay9PPjemdrDD2KXawlmQ4
	 eMeJw51ipHYNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD09C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167239328741.676.16446038528514294605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc26cc852c9f8a4677cc5dbfad95551c839dad99c3c45fe1d12127ec57ddf28d
Date: Fri, 30 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672393287
