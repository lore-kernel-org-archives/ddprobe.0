Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A244BA57
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87D1C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673652687;
	bh=DvP7HhjJPt8eltTEqEVCibojaLVYam3lp2FUVYB61nM=;
	h=To:Subject:From:Date:From;
	b=jQbTXn8u307oxRrwzOi/guaZahfKE100/FbEVoIHWoeLv9D7wAjIEYMgnDZAaCK1x
	 tTDUQ8mHwtTYS7138P+GR/umWnf5MwB6Xb0iDbL8i6sey55l/n4chfzlJs9cA5+4OD
	 PPnrNdZtaIZY15r4FaOF5XZXDWICZpBh17t5/JQ9N9DsoySLZfYTzEzCrSwJJ/il4T
	 0kPFFeITrZAoddgztC15A8tAyvtc197BlhjHm4tPJWLDgSEAhciQY60sOHUbaFSZ6L
	 yhvqtk+fnfbU9fH9DQR9NX4x26lTKlxCEZX/ykO3KgIYIUx2Csqv5D1cEwZVzCQBZX
	 EjSeyDWMpxDHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A05AC6379F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167365268755.12979.17864858465018605738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd37ce534b6d3168d56ce1f3ced88d5cf97e01fff6a710b1f27cf7a7d96a4c2
Date: Fri, 13 Jan 2023 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673652687
