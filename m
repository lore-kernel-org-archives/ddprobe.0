Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B5F15B6
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4AFC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670920287;
	bh=X07LCACEGKghZVvvii/L78Yx8jZ2D2OZY/loROmpi5Q=;
	h=To:Subject:From:Date:From;
	b=F/wiQHqTlf+vKRKHmnDNIp/T1kCjvgyOT5e975usAikA11pnIU/vUGfQZmTCBoiYE
	 ooMkNz9z62wMAFMlns4Ml/lBo78q2eC+PokXvyTFykU8JM3khwXTgKmF4LlmRHXGHH
	 V40ehlUYcUoSceHkPuMupnD6SY2PgESv0kX5RleFg8in1Yg0VKkV5BcB8NKTVWLIhE
	 i8FbUS7MTpONPdRahQ6Xe9Ic1/Z/KbTZ4iO5rDNpplgXvWSVEYa1yqAHrWuKNC7qM4
	 v3HGTvk15f3wHAxB3s4IB/yaexJb/5w4AD/XO3tEqELLGXu7hXQYuz6vHBpQA4cEQq
	 viJY3KT2qd0lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FED6C4167B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092028738.13108.13960872672776161035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6526839a061bd04967e2a65d10f7fc8da13d41a27bd96dd042de697a76d18968
Date: Tue, 13 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670920287
