Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D76222EE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Do6GeoeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87293C433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699898296;
	bh=XgDGAGMEhyHqeGrvneaPbdTZYfJTC5B2c9a+ptTwB00=;
	h=To:Subject:From:Date:From;
	b=Do6GeoeYF+1mt2QIl0Ltq4FcEaj4Ghr0WqPMe+KO0kzFT1ESHeIDHDoakt1JX3rBD
	 G2LAGRABaJtZSFiEy1n2zOzDUyRaqTP2jCvvzkGDMLy/nSDZgR2Dx3d12qDUJ1JPlT
	 xMM+8h+kvLki6yWeakOVkdI6lN2ldV4NJk/Amh6yUFA0qylsiIvYctg7ZRFIUcRA56
	 wpqzSzUdMDQxoWayyTc3HKwC2fxhHr9dMady8MUCFa3AzplqxgFJhaqAcPKGDho2j/
	 +pUHETYb39mRVn+OZ+ATsUi4obwTJ+Z6c3fP37lw2Rlw4fRMKnx2TfWHfvQWG6lMcU
	 71vBiD0mrAhgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AFF4C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169989829642.6041.6313929080441630579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4166b497725229021fe85ea304a50869d43eed630a442c870602354b97b2da8f
Date: Mon, 13 Nov 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699898296
