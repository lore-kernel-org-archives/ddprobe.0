Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938E8256F
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A8A9C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663593653;
	bh=olduYEg9Kl27XdjKI2KZwI9Ok9jiueWHzdnR/s/bVQY=;
	h=To:Subject:From:Date:From;
	b=S+r/GNhEgts/9vOCheX86mifl/cp7M6kAzZSC8C5Fmm3PktEnqRPd+HucQVGYsmPs
	 NcgrZhHgo2A6GxCTkm2gWNAgHuD4yZijZZxknJQjjDZyEYgSO6ql3buxTHvb9qNr5b
	 A2A3utZYkA5dydMUoGhH7k+RZENBnfm5rnGZEUvfeNrrOta5Jt6gEX1naDZf1E9+l3
	 yPSs0vS73jBvZTU4lgK4OrlWqupU846z510zL9jnku70jGydQh0aine5LbYbByDzz3
	 zb6wMmwG1N5zX2mdrA542Iq+ozC+Rn8z5u2pu6donEqlKNHzy9kHaFqOZKwCksCcA+
	 TGr/xKhKdDS7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51919ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166359365332.24674.2153264996603835365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6272282cbfbed2f21d13ddd87cc3bdc96d5f69f2b6ce269e68178d46206904e
Date: Mon, 19 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663593653
