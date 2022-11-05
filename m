Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF1D2F2C
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7923EC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667671254;
	bh=pc2bDNaqx6S8KbaYoaQPceWidkY76Ebt27dZLWDiXwo=;
	h=To:Subject:From:Date:From;
	b=j1r7r5da+pJWYU6trvNhA99MmDioHaboTFH2CN5T47IxDBktRnrz+65UZZA+1T0mq
	 KPFqaEKn8cvJzwK4jQ7ET8IZCv7G4SSKSkkZr9lY/B6NLm2DipAI86/IVghIK05vau
	 oqYF9bVqW/FqRjTNijsqIinb3TJNH3bUUOU0xj4zFVhqFvfrJhAnsKeIWuG+rlg+8L
	 jiqSs87iA6rio2SC0HSDYZTc1lD2tRMApKdJpYLCiaE4J1BnsrEctIWb7ws/mV3AIT
	 F3GeYQqtOsjX5+YervY9ScNm44V5aC9xtf8jp61JgCNK+RtfMlKuJuayqWZOR+ldHv
	 HzRfMc/iCmviA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5797BC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166767125434.13107.18224516066109918005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f1af89b5445d5e7c6f39fcd4a8021d8ba4ec56099eddf4fc90757158b3a714
Date: Sat, 05 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667671254
