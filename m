Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3B615A1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 08:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17AEAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 08:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689409269;
	bh=RbLldmfNq3CFP7GfiLZa+vgpc2/UfTN/2kMcDr+RIpQ=;
	h=To:Subject:From:Date:From;
	b=q1tb3JMCm3vfwatakw7cTm4dhC8Z2Da2L6c7v0hzhpO6Y4x5AO0OgJfXQnUYUUGVl
	 47zlipKBHAIayLXCZKf0ue8o6PD10r/23P1wpZQ41eSPD4Qmzko5R+ixBWCR5Q8u7k
	 t/gL9fBmlWYS/DtAQVUMvPC2EhruUYKU+VdP7dG+1PJT0LnslH3BgjIbJjYx1MDpyy
	 sKZ651KCdGYWRVYA+klq/3IRuXFn6AZ19yfZXOnaZbv17soRBxlKuGjfYLQisx92A6
	 TbQtYD5W2T/HKrPo21TdROk7zTwRe1m0ir/i2Vq4Z+sNgtNa9jPEp6wKTsYTguQOA3
	 n8+Ts5XP7mbrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFFEEEB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 08:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168940926887.22156.15333174921705650147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a571a5210ce84722eb26ed50d0ee3be59e9ade9a7dfe73cccc400e368ee9740
Date: Sat, 15 Jul 2023 08:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689409268
