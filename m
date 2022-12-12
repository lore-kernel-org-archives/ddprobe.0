Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41C01847
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81898C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670820687;
	bh=amkRxB4y0lDARlnWsusnZYeCU6aiy56PoM3KOOOx5bM=;
	h=To:Subject:From:Date:From;
	b=pcKv35Sfxykm6W5e+Myu+OyS9t3UbcxumR670pLew93YkvIUnbenhkBckXuPEEnWj
	 7yWmWqVgZJvQrJi/x9GMKgFfkTSHaBwqxkSVnQVWL9iOf3mGGqm7ofjalFcH96Rbkm
	 G/i9XYSLgYVjxY41TZe2LJm3iwkw8VzpoBa8OdXT3r+u9NVF+UqDvEC+2c6w37KVxh
	 +ZYEA5siCf6IA5kQvwKrGf/KEGll0Un0WWRNfNEqF6x1odjx91lxIiz5L2Hta3ekhr
	 F/iV/avv7MbF07gN6SZHgRN9iD9o7UZ78eCd408eNtww0A89Z8OD5urG+u4hDcDCik
	 DCPizTodFpqwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60580C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082068737.24967.7550120501394872232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2673933bad72bdc87d8dfaa4cbf744f8ca49c479708d7c713c320997172ed9
Date: Mon, 12 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670820687
