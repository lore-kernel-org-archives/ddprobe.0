Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7D133ED
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E81BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668778254;
	bh=+qun8IG3QpDdmjv/qU0HG5rMWyuNrvp2KXVCZ2+kCFw=;
	h=To:Subject:From:Date:From;
	b=NvOKsVtDvkkOKyj2UDlELfPQAxc2yLolIUI/W37RT1E7ZwJ5OX3P8/b7KfPHrNHh+
	 C4b8+08WIghVcFmIteZA2+j4VgBTIq8mx4UaH04AxxlzsK9BpXcyESKNQ+AYNpwI1q
	 AmB1/G1Bc8w6z1evmhG5voCaNNi8Kd2UU1mIJtXE8gSYdJSmORR1O3knGmGHiAeRwD
	 vBdZEChUjgx4K5E7Jkoa+UMexPl9uSnkNWT9UQjccNuZJhi2SAFASz4ZTdztlXDq2t
	 e0YpEwvslSsOQ5eTEN8/yQyGBig3xglEty9dRoww2BYys8TqXLZ0s+bNr0g1gy+SuK
	 vT1Qje2i//AWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A5CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166877825434.30985.7618972193556175545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e68ffbe0c69f9ede3fdc451d54cddbfb611aa82b3916603c88ebdaadb262e9e
Date: Fri, 18 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668778254
