Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA98EB30
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77674C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669462854;
	bh=ef0KPAVMGC1gMf18yCyxuoMIhIGpwvmz6Y+27Edulc0=;
	h=To:Subject:From:Date:From;
	b=QC+Co/gNln1QK4GvWELxNz2Q6sJhMKamJXL4oIgnmrC56cMZUBVeyObDaWYgI5nr7
	 xxLbjGzg5evpNqzk1NdlyesmuPN+1RD97BD/JG7wcKAV3rTMY4ZJqM1beZn1kOUdgK
	 sorpRg66z2Kc094eA2cOaMY9lknwCcJm6EiUK4yGRH2ge6R4RGLd2bwe+fm6Rik+nt
	 ZtkSDexvDixZw0s4xLj5MJqqRm2EPy6ZxIMZkzt4lC86DD3WsjuRpFuv9pTiRNGV3r
	 q6uIPhrepI8w95phHwhxJg9Glz1/e6ygVFRBFWLXqnuDOfkdBEVGr7x5S7p5jVBpWa
	 dEjhUuCDrMvSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A839C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166946285436.26760.9238548194706393993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c735ba6358ff3d5f4b3ec3973e3b3a2068d8819e50816f0338575a4464f9ac
Date: Sat, 26 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669462854
