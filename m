Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C446A23A6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65F75C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669364454;
	bh=dd1ms4TtUoNE//1oBqNbxxssnJAAftAIfJYgbhXkLyQ=;
	h=To:Subject:From:Date:From;
	b=XKNL+jwk2K7L18vPwyMKIybkuML2S60u7d+r7A6xQ+QP6EJ2Ho47b4xEHku8CMM39
	 OWuO+NhOtqZOmtfGHdT7o6D0ChGqzXltajuparE/wnavE4n/05RQ9g1k9Qg2BsGoAL
	 2fekRcb0fghZCFReqwwxU3ti2yVh9qaag47k+0CQVK2pqsMBWR2DoA07U9PKNypqLW
	 J8qfeLI48DRcz4b0fi6bslo+sYXkZ9fRkpXANILTTaljwktdWDmRs6zH8kjFr1QajZ
	 DLpPR5kcWgbb4fsldDykHpOyIKsfhMb7EfQ/b5GchTiV1cwO3tWPJjhQhoMeidnLko
	 ZVZ53IIaXgpfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E415C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166936445431.11502.17934539044629226220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a83058bcc9315b2ba936093c0f9cb4631d110c76bbe9123d1c2006fb2cf975
Date: Fri, 25 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669364454
