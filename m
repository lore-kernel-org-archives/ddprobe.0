Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 909CF17EE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3802C43321
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671775287;
	bh=SNHT0vBWOnlLGDSA68EedkU7rRuR9h+v6f/uOrM6zOs=;
	h=To:Subject:From:Date:From;
	b=gQjwCRt26i1q1v+cJ1WQJs3AJ7L8zm61ZpsiPswLCm0w/V9qQ46Fz2K0090w/xM8m
	 zumaVLvrLto9MifB/tOm60F1W0Rzn7TGtCnyhd8nSN8tWMotY4GsUFwhglaJb6vjeP
	 oPn1MHXZz7JqfW3uWecduMjSCPzqSapFZyutLsmBjFF9OaoCATRkZqrSyEMQjyXh5b
	 pZSG34Phd9FHJoPXsKSpTSt2WfSV7GwaUdFuRt3zaxQG9CcMP/pgxhDdRDplEnjUYJ
	 f5Islr4JPL7qZkuEQfzT0fEKpoYmjyiftf2hFPaCsiJJc6MG6badezZaeSvU47osZJ
	 FXXtD+hxgHSeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6511BC4167B
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177528740.26170.16882341292968014101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe7e2a16fcec225f20cec67db1adb3375dc390ff390ae1fe4a2cbd356ae4884
Date: Fri, 23 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671775287
