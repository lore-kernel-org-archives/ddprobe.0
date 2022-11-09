Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0533EC19
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F938C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668016254;
	bh=3IDXoznhe31Gkdl8Dj7y0JsVOtIgKxxFthyDJnAmUvM=;
	h=To:Subject:From:Date:From;
	b=hKSFIejc+yoaTHXtd7gJIbLhW+Z73/T3LHvqXh0wwLornWVoaE7C+47kqCdlG/4fF
	 bIfdOuBqHe/QfXbDddypRg8Z7ro23rinpKgdPtUhgZ7V8tu3uCyUJV3abTCBUItV+I
	 vzDKoZDkrGC9lifPB1+L43CxNuTqrmhROsZLcTxGr+zoqUYQfGn77U2ki8gd/fpAS6
	 NVqwgsxGZMF3FiMaSs7BZ1hRoWVZ4VQBTwdNECyiLFYLNd6qEdJGcfQpT2dRE02XqZ
	 GN5vh1wX9UySk3Ib2s0UFgjTfwwjSk6TQRpolbFmlv08EH3eLUUnnmUpodU495jZib
	 IZM3mTbMdLScA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65244C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166801625439.17572.11091487951970723643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a6ce23d318f18adda9bb1e8e563b1bb6a46b6ace1d94e3e222c206430bc2e4
Date: Wed, 09 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668016254
