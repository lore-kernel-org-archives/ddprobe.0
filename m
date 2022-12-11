Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE25BEC4
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF09C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670726487;
	bh=glKZrIhMqEHZCASCbyHex7/JCkJIPQlHt+AxNA/dnJo=;
	h=To:Subject:From:Date:From;
	b=R7+umYCU3PUVFcrBG1ZO2/M/h2NVOpcyOmpmDnKjA6iuXl5veG4W9NZEEgmFvG/NO
	 sIsGCPFVWLQxNZ8toZ1FEruCEDaw9Kkwem2mKrEtj4kmAJSnyKCooTinf+O047nqYN
	 Q/VGFuuDPj/utuUCzfdbQLSreJifYa/VlSgCwHH899TU3tIh87E0K21WrQzbTw0hE8
	 b+KJ8AD9/SeWBwvNhtRwWldsJLJn5XTUbaHrvSbtev19bFojPS6H7+/0pZDZS3YKv2
	 gRUeje4SlN4iThypmUUsGtHaS2rUF2IFSRoWdmbtKnN66Fjg05YRIDwTgKcJQfyZGY
	 kyxm7qZifsFug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FECC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167072648738.2778.16060666726090012500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c112e8805262229ea74077a95dbaeb49a374a1d85ca65fff68b4036de61c7215
Date: Sun, 11 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670726487
