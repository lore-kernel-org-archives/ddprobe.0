Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F632CA2
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC74C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669567854;
	bh=PNiZm+PDBThM3DmDMxaRhMynhf9GDAABOW8kFV58pN4=;
	h=To:Subject:From:Date:From;
	b=QFq4BSUQFEQws/o629GBdDdsh+YH21mPy7OGi0JxfJOmEypaAr7YlzUhAagq7/nYC
	 Mt2pWEGdm0vAVOQ8n5v5Yaa1O4crPjglCkwCKHfPgA55zk+yiDYASSlJ5smvUp38TT
	 g3Tm9k2tJGihQ00t/5o+WvlAYUA7nnpSwPM28a85p/hZN13lpjkW53zmr9uC7oraQ+
	 s6Zcg7VwEvlZT2TJUmgJI6tA/Nkrp2LslcLk+pdj74fQU2uKKdbEXq3unIN/v2H7Ft
	 N7CW/1HqCfry3XCEjR1BMKIDCaShxNiCAJJp6OPFsEtAV4jvi4aDu1d51PmbdZfdTw
	 cb158o6lM2fVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5580AC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166956785432.22241.15847262270990616614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbaee025a2a3232ab0d3f8d775d4d1e0c1ed8adefcb2ea2cfc25dfa78d8693c0
Date: Sun, 27 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669567854
