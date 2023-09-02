Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C57A23AA
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 07:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD36C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 07:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693640048;
	bh=q+Cyy4BzN4Jt6OcpkrNrrwiN6Pk0fsdaaig7xO31Xa4=;
	h=To:Subject:From:Date:From;
	b=CFH3MOju8RZRST0ybA+Yjf9+GjnjCk7FSdT+m4E/LWCzV8Q9R0x/vFoPUIiH4oiu+
	 IdzD+vBG0HKPKFtdXX3IXMAQRbQRN4aAuGbGaAQUigU7YZFS8LxGAkxNemojbK1ITD
	 dgSGqo7SoyPcrA+AdkZ59eJjCBAOKMmvB9pHKZtvfAcepJLPidKCV8nxXYpEy1CkfT
	 Ja0AaA/IxqJmGnfBZJw7VXcQd7HbagZ4Cl+VO08FcBvHUo6dnbnPxXcY+T8iuvjVvg
	 GwnLJ+ADzJeyJ6AaN5+QPeI9DzbD+KU90fsjqnaQboBOD+22o+QcmXGfXPUaIPSSzq
	 cnBa908U2pkgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA78CA0FF8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 07:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169364004872.3217.15747867324189539003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e400f1251b8abc556a58a05cf888e28d9a94c098f0b256370ef1e7576199f11
Date: Sat, 02 Sep 2023 07:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693640048
