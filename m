Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E665C941
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 16:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A9DC4339B
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 16:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681922705;
	bh=D/80g6gDLwcDA3YDTPHmE3YAKO2ZpnYJ1GH36UBkdG8=;
	h=To:Subject:From:Date:From;
	b=fjBfp+U9/kEeEXqKoUsb70Mrkfg3ZR637Veohj/SFs7HkPHWebf3T9JeiOO0tnWNX
	 kxVgMEHcMTCm+rn4JRteJVK9uJ389woCBun/3yN9MkLmxYgVVHGbytgezYaepQttMB
	 9LAp2L07GtgZ0UCcSzSzkXTHBHPrbNUoVxIeTucmapaDI2VmvtmgbvZP4Xp9+fqK2N
	 XtBOKfxEJYXwnfYaLn+itJypK8P6BSWBvEEcHuYsbnpWcys0sNSIXKfI3wjQ6YqUaU
	 QxS7CaOM//SB85oSFmMr2nBYhqDE9eTQHRemHgNpjHNkO2KQq1wTjCUDl56tY0YKMw
	 jQN20PZZSr6lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9428C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 16:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168192270573.16888.7786182089325944357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40695c4f4edb094a14173909df9267f9d2314e1c7cd925344bfe2da67bddd3b
Date: Wed, 19 Apr 2023 16:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681922705
