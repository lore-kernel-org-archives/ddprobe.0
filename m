Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22572C9C
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D42C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672516287;
	bh=q1KoDPMlOwEQRmED/kjcUwyr6flBHfVj8sQ7qk394Sg=;
	h=To:Subject:From:Date:From;
	b=d0L3/2AigMY0Tce0s6RF+a947l6/rm7ZkmZogAqHrwxVUq8mLL4rVNrOSJ6yzQpTL
	 QMDhw8Gi/kkJQG/9fiFtGqzX9N2b6PFLc09xYs1piqrbJsdxlhTIAgNpw8aXez8cV4
	 ly7E0icIjX3QljFag/3ydf33dTAZnraajI6MIn+2D1tMShXKzs7UrcHuUN198fLKmp
	 klb+mV6JCkbNZqFqIUOdEPXcjwXQ8q8LA9C5NzB+c+0n7AkngLFPq9h7YzvVEri3/C
	 XTNufQPxftOA5Gkr6pz+VD6A9Q6QjV6bxCcjTiYuhttktrIAKOnn10zikui4hByXY7
	 NMSvZtSraVwJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C40BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167251628741.15204.17568259345771311743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9065e9b4f16a94d99362e260c7d87bdeebdd53a9c8b3e9e06aa73752e6a68230
Date: Sat, 31 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672516287
