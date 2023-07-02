Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795C81115
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 06:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EE9C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 06:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688280848;
	bh=I+TfuLsJoQJoKWeyKWJEiWInbdPFi4FTz4479dw6tlo=;
	h=To:Subject:From:Date:From;
	b=ux44oh979hQI+xx81b2MaeQkmcxFy2q15SwmBA8/pWF0tls/fjHgRdqIMFV1IBkEZ
	 zbXtAJBbZBHho8V0Z06YoffaQ+RtwlUksty4E/BanTCM6Fh8ERiZjveMLsOADS/sm2
	 3nsJM9ypR5jtnVk0qvhMknLSdg3G+0V4lUCqWpfGjb0JedwUtcsWPViAH0I+YIUezd
	 L+UIasQSN7rLPV9yZsPF0MTbUD0w4e429Q6JK0cfeFb4h+yrFYNV9KdA7lc74F6RYF
	 s8ugTZlLlRcOpd9ZwU4I1NMCgfrHZRWh2B7WIu6BTKNVS18Ouf2MC3uaf5WPPJyxCh
	 cHtU7vCp4f5tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBABCEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 06:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168828084872.24133.669242988465586257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890e347442defb2718834c1405a091922b376f7d366a879bf35e7e9827b27643
Date: Sun, 02 Jul 2023 06:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688280848
