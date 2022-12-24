Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD97620F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DDB4C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671902487;
	bh=ZZ1cjZHFkLx/LYIIhOIN+i25fh0fc5vaM6LvRqBiT58=;
	h=To:Subject:From:Date:From;
	b=dyHhTWihHqa3Css8BHgX5FB+eQj3ZnfMmmAqNm7oUt26c1jwPhCqdZGeU53dlwtHH
	 nH9jqXsqmrWQ7mnhFhzDv/mON218DDkucpkK0Vg/FXIDUZW0dZpBD+yyNrDdY33Lt1
	 b+IQsCjuAyjnmHGvXcS7aHyQROepaiiXHwmySRrN9unKksjpooWTXF08Y1nNNh3Gi8
	 L3H57R6gfndovGS9RteRYwdYZw87a9Fb5WmvZcnp/nSVdUne0pc3tD9xOMc+hBgQmG
	 bTxQE2wbCBFkLJTyzpEhC1BBAN4vkTWKKOd4Pc/Ln0lwQ0XZXegsxZi6ia3Cp8TR1R
	 LgdAIVt05mdIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AB1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190248739.21744.4660563945889759808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a16eb1f605f708ceae785a5825c3b9a0d4c2428819b31c6e7346f0f59a1d135
Date: Sat, 24 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671902487
