Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4031D2E4
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 17:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E39C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 17:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691602988;
	bh=aVcSJM1eWfMrn20DERZxru/LK5G3px8qFNc5hDogne8=;
	h=To:Subject:From:Date:From;
	b=pGKwZfj9FFQGc1YjxkiYzRVGV+QlSQWAdfGWBlkUYhf6ZKgt3Qunfcp5HVbp+7kiu
	 Wgr/hHxTPTu3EGPoa1ROTrLmhec9qwnZ61SObG+rHbkRfGFkxmStZ4EBXYOjVZ/5yz
	 OKWM16p1Lg09iEHunV8q+8oJ+LQeVTyoFvt2fWNIX/ExzhpVM06h3nepeyBhhi3osP
	 4YknO7UWK2IeiL+0TvV4XrKGgP+KlH+P2+KyzxD0P5kfPzuLW7aqEKeI2xV1kIKhdG
	 npAwg8dP9mvRQaOEJ1Fz9BppExP2AY9Y28V4S1h9689Ldqw8GRLmBtCLph+lK9l20r
	 sENPWLvgmVTqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A5CC001E0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 17:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169160298867.12470.15891767419197552868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe55dc8411d9534a23f7e87af54284ebf5c7ba42f717136a13b1bc298e184d1
Date: Wed, 09 Aug 2023 17:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691602988
