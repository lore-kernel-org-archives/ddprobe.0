Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685A012B6D
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 21:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2637C433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 21:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692654848;
	bh=I7fcUsyDHa5DMK6r10JjWBKKauXGEibm4T0Gz4MFnPQ=;
	h=To:Subject:From:Date:From;
	b=Uz6iAlxcl+//0alJKA8qr46GO26UrZFNym4rZNraPJhv2x8o3Oq9e2YgzqBsPVaAX
	 D51mhtQssCTH6M2/QKL5fMgZ6GllWUtdgZ/IdZ0cL/cKGuzZlL79+T4tmvcI11E4DI
	 BwkQKdkEuTu2VDCZ7/Ni/p+1jRmC7TFQQifEeF4ytKkdi510Pxb2r5bxKVtF5x/EcS
	 pIXLuL+9vlQYr9kXEhFzWmVoB/SwF3lBt0fi1pXKf9TlosrfjOAb67eC1xnovEdlSE
	 c7IAMjla487V+jfLLRkTVieuagVxCN89J8XIFh+uIYtKkKPk8IWN+JbuOSw0PTH21O
	 hZfAfE4RoNMRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF647EE4996
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 21:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169265484870.13309.10309695084121675212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ede8fbaea81db7d70f3c675a278882c3bdd65ab9f4bb3eb0776a4f9e1eaab61
Date: Mon, 21 Aug 2023 21:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692654848
