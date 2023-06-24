Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B7333DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 09:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85CAC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687600388;
	bh=lsVvJGC+mdyQNbbi7Kni2rn8xizR95HSyeI7vQoEEm0=;
	h=To:Subject:From:Date:From;
	b=FS79bKxIRc7pzajxCmRjWk5rnqVOFcQJ1Eq0xWwg2ksefeQN/um5Eqt8o+PlTlp5Y
	 M8/MbKpT/uknYw//uylRqFTEUtCM6gbIzI/cpfWVgstWdZQ+l/bpksQ5D+CwGB8+EN
	 F6rCs+GThFjYGuAwJcvq3V1BVPxEripGXb9nAj6UE0nzz1LyH3rktRa3Nz3QBltTXS
	 wMkl6t9YnQ5ZaS6xFPDG+qLSsn5p0WPmtKcFjuOYDjxm8H0c+nwazlou4eqKNO+oYX
	 HQ3Dl4tvMB/oNFM8qfePf/K4D1K9/CUrjHcVOcwuBYTCK8AwWPvShLchTlSyrAZiJo
	 t7K871+Q8Z0yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE223EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 09:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168760038870.12959.6222060167090064189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5178f2e9b39f9aefbf577753a05a80ef377a40c0035a6b8d54a2622b47e3f41e
Date: Sat, 24 Jun 2023 09:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687600388
