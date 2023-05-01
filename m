Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9397465
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 20:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C49C433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 20:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682972585;
	bh=W4qYrfP7RH/zAEWHHtRp26+ug0LbxUEKJE0OiwUn1Ik=;
	h=To:Subject:From:Date:From;
	b=CgMFfvTNswXqh2PnXdVevDJibwwEQAroMIFg2EbQOISXggbECC+7K9XWtX0VOWMEt
	 CDl9ayct1aoBef7JDaADeRYod540pC2hSnBUw18z5BSVrUWQMEJCgPj/B9UHQT5DQT
	 cAk0jVUEwFAoMFcRKgRWV9+bWt+cwLsB/iscrlLhC/0c91i+eefmWmeCMcOqdl0Gt8
	 dEWXOKozPvxBkoq6sWZCY7j+Bv3V/iXrUlI9sh9uiUbk+MZ3Tf7wGJxuIIpY1x+ZOT
	 EmBJG2cY2F8xlXxj7n6ukga9YZK/JiUpPXQhgYo92Wjh6wqDubzivGMAoSnUNWDMN+
	 osE5mmbxE7K2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5622C77B7C
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 20:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168297258579.397.4498960067405701770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b0cd6dc87cd0f3f42d6332a10137938ad343e512a85bcd2c3f31665a680125
Date: Mon, 01 May 2023 20:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682972585
