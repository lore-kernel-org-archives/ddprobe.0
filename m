Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78CE3C0F
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5CAC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665074453;
	bh=Yw66drvfZlA/tYd9wsZ2uuhBAJs2qeIymSVRoc7PzWw=;
	h=To:Subject:From:Date:From;
	b=JUYaLv6kC/6vE62nmIhMexQNdDbJLBLBrgV0ihzHH8KGJtmPMMQjy3aaqw7B8sdSN
	 hD/75gruaLOlYA1Bw0yFiLjKmQjdpZWWxtIcnmsMMBGi6y29xo64YpjJX175Xksvd4
	 MvA8PM1WulwaqJ0Gar8qyEcJTwaFzvdcQveD9Xg4x5Zvx0WSWc12W3KyS209rnRNsA
	 FhuxFW/RXcqFFkzgp1b96bqD6Wj00N9DHU9YKPSgFE8zrw4VwesE4yzSR7GsZYL8g1
	 STBx5hBvDpZPNfyOTFO+g0uNTmOOu5SbsJYMDyz8GM7+NaMfQysXLJIjBlhrTFI2yM
	 nCJRLmUu0ZmBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59921C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166507445335.15411.1807508353693903639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07180539477bc07d0e9e903fafd8af95f96ac5ee4b95deb24701cbaa58dcee69
Date: Thu, 06 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665074453
