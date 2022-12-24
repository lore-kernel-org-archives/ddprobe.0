Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF7117E8
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A71C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671853287;
	bh=ipfHcBE9xSSnC0vVcSKUHfzZsKCLOfzdWYoR/0qPzCM=;
	h=To:Subject:From:Date:From;
	b=kEiVUSczxPp+RsrGvpcteJ6I+uONVX/yvTgroNXyLLRrlgSrFpdlmq3Ls7o9LhB7g
	 P8OdEvnrqSvuuVSH2ykwuJOW3hFH7NunLywWFuaDmP+8iN66A+Ap0L8oY0ZObqPA3g
	 B5d3AUjZOo48m3sPmwfbahzVRBajgGdG4zCNmReeopR4H9lKLmJrQ67oXWydxOmc8+
	 Ku9W7JU/uLhceEy069vjl+CQWqwuNUs9D53/xussq1cghyvqZZg6YI1JImO7q7tHKD
	 N+VFsbZal8Y1uusjKn1Yo3a45J/lDsxwEch0t140twwnyBRm1QpIkk4IxOq4UYitCV
	 HcmvuxFkfvwdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6933BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167185328739.10444.3991931032001909882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994d1106eb63e8e0cddce7188a28d817897588f05b415c339f22658c17c4d0e7
Date: Sat, 24 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671853287
