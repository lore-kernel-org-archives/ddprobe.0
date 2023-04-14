Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4FF7F1
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 06:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2FAAC433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 06:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681455126;
	bh=cc2PRjniTSCfijdP7IoCbO/2DfThs2DFFnyY1ae3I3A=;
	h=To:Subject:From:Date:From;
	b=VQz+4DEeCdILOs/P2qowm2g2gSV2rLnlhGsH0KGugwFaQ968Ob9qy9BRL/ioalsWx
	 zcU/T2sWp0wnOBkkNq0SHm9lAjv/zok7kIu6BmUCchLrV+kOEMqbysC96ITHVADQkb
	 MH9KN4dlEjssYyd9//4CvphAmIZn+5Pq8yFQy5K95UJBz9WJLwBnbR3dmXmDGZ4sN0
	 VL1m8nhfuI4XILATg2HMEUSjAnUkxjgogwVIsZo7xwgWf2JbNaGB92VTolfyeSTS/j
	 t0ZiY1ihcqrZs2vRiBF9tUhhUmf68OViR4GF0jiHEpfXybu3vFi+NqaCkR08/OfT1X
	 lOiiDt1nsxBvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE30C77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 06:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168145512582.915.8678543670304940554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ff485fc99e09d16079918cf343310e3f40d31c8eb86c68a7dd44cccc47f83c
Date: Fri, 14 Apr 2023 06:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681455125
