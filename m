Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BD6C2FC
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 18:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59C2C433C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 18:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692037388;
	bh=vGOqAlUzedpAUds+ydcIboZfFdjknWcuPRf+JIQE6u8=;
	h=To:Subject:From:Date:From;
	b=MykmC6XXiFFepGgUYNTEa6YIpKQf8P2/u3cMMVrsqBKRw7ulXrqt3kzQgjaPwpWs+
	 7DCTMqiB5dg8OsuwKELFaDR7N2rm5MrN30ItKWNKL8yxI/QZgWXc5O7JpJ8O/3kngR
	 43YKNLRyN4Dw3QDae/dxDsNcoR5Lx8lPo7xBrJvoHihky+kLNNxePWKSW3Eea5OtIT
	 NyWZUjRTBw/zYZd//e5RdGZ9Jn8g/LLvfH2VrdkN1QBnBV8b2RMPevLcTaNpFtzkOa
	 w2+/+F0wbSkW5tykqujdy31PD0C1s/1gnm51grW1oHWDa6rs/K3ksZM+bW76HB8OYN
	 IQr+PA7PDuzxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F9CEB64DD
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 18:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169203738868.27902.13915085427219409461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5418ea746fc9842d02ca96830fbc20391051e527504768a3a5803c0bee4ab5c9
Date: Mon, 14 Aug 2023 18:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692037388
