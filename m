Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9831991A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 12:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D1D3C433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 12:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684411566;
	bh=AM1qd49xpfHRDstpBHnSzXN5vmU1UsFbhWpn+DT0870=;
	h=To:Subject:From:Date:From;
	b=Z1gNJxeXjeflpW4pLPOCUtJSLjl4J/HxN9TsASXd8EX3enKIF2jKSI4d2u1B6csRl
	 kprXKwQztzSx2GbZCrD4FUoperv4q6UzGKuLkzgOFYMdniIxKFdeJz3J6PzTZAHDIP
	 n7q4VAYm+GOa9PVxhDrP1XbIH+mHmI0flKM6ysccNv30vK6WQrkQn9c7BRIlB/t/oX
	 5Ns3YxZRCswE0yVOFcvjjKb3cZVzEd9+CRou/3bI4SggmXdBlW4ySYBNoC+U3siUOB
	 yWG7tc+98L+qpOzsHOwOJ19OkhGK1EpMAhC9c5BxNL8YKCH94/xGB/KKAp/LZNlE6Y
	 WXLysUdmwrDBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E460AC7EE22
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 12:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168441156591.1780.720252252809385381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 774dab70271b8495171db6d504a7aed4a4d193e8294ae932853ac77055c0fd4c
Date: Thu, 18 May 2023 12:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684411565
