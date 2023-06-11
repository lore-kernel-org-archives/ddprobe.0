Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8938563BF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 10:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00052C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 10:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686478326;
	bh=QVo+m/kkTiRruWKvjg9ooAw55NxkUYjSxzwK8jkTAXA=;
	h=To:Subject:From:Date:From;
	b=BgwBAzUfF2Zr2QiyOH6omdllqXwuY7x/LlMnuWsBkw7dq02ceRS+Sh6XTrhu5pdIb
	 R5p2JNUINmirT6zG0xlsUJSRshWgcCrSHsFsuGatUO4kp3U/hZ9Eqzxp/PhOvMKo2u
	 bhn9CcsdMUruRp4N90yvTnZR+mDUoS3QqdJ1IZhVuMbpt9LgamxdEis6E+xKAptdRY
	 QFEgsVK2F4sy1tzsJ4WnVdTQPTFiOpqSB15esDdhDRMgqv0PMZcc0NJME1CnJSph0x
	 ABvUOA016RBPHR9UE+JSQ8EwkJe0O1bkDxcbpekbcieCjo07sma8+PKTKOqg0MahX0
	 CRZwni0EQt18w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF6DFC77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 10:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168647832574.13187.9851371088045954029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aff188be1651a719eded393978429be35662acb2daa4fe255bbe3132e9c1eca
Date: Sun, 11 Jun 2023 10:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686478325
