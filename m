Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB66815A9
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B8B6C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663921853;
	bh=oy2/xOnOMDs1UxqXGw93QjkXdJ8BFct5MB4opWkQeyk=;
	h=To:Subject:From:Date:From;
	b=cDZ8mcd0Whz/wlz4Zd2hgk4hXAphofwCBVJ40C2JtvSSlgeLT6sdbO8p32O6wJ1bt
	 nmPUgeJ3aEyjZf9n1nN3+tsvoSPcyLgLP1HaA/Cz171kuafoNEGV+g1Gb2v6yZJYU4
	 ZNqHvnJ/W95TIhX2JPac2x4hzBGAZHcdND/LM4Gr2uviBn1FKFJlmXakzAi5/ZuUtm
	 Ya3v7do9ElMC0Gx5b4JXiij8qxIXj7bspbptSHjZW9MT62dvFDik0/w1+n7+j8KSmW
	 3CGz07JwFAqrZm/Q9F9bSC/kADuXoNjW+K17V5NB3x0dQB6TQgygAwsCohozMrdzxK
	 TZALybMxyL9vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52410C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166392185332.28088.17784269507821250163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62dce7282f912c0e75ec36345586aba4104f70dc2004f9bdf788e5034aca471
Date: Fri, 23 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663921853
