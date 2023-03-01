Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E4A3229
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 14:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E844C433A0
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 14:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677679566;
	bh=7iiSwzNxg7+PFFwPwY9fGoO7UpTBzoF+lFBCO7T04rE=;
	h=To:Subject:From:Date:From;
	b=ZV+4ULzlXlU5Wf3BKubanGzO4jhtea7gDui8UM8vofk5qEQrOxKfBK0EuBIegulVl
	 XQHrTdjc5mintJfQ9Is7l4tPbipiQ06F8jWlTmzvbuNjDQzB143SU4Dc25wCncUubd
	 gmJRwuX70s/c6oyfYYcnwGuAlOniQVZFjHnFPqHquahneJMdrfJ2CMe5cJ3uE+b7rl
	 uusFR8nB81JvqeEQQvLHYRt4ZHmKS1rLu9Rp/LuY62iRZfQ4yylDfE3oS/7ltkfFAT
	 hMEyvY3L0CMKntXCSoiaECQc58N/F7fCTXK7cgrwgl53eFyiIF0uqLT4pkekXyIdS5
	 Zd7ZPZzXgtHgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA56FC7EE2F
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 14:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167767956587.26417.8134455731960413300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f98d862f76d122e2f4967a479cdf601dbc34730604cff37c25c93418a19e3f0
Date: Wed, 01 Mar 2023 14:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677679565
