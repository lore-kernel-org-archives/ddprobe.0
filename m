Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DEE11429C
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 13:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0971EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 13:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686403206;
	bh=9hPuQWnkT2Clr7VP/aBpKXNdZgxew83e7jZLtU9vkt4=;
	h=To:Subject:From:Date:From;
	b=XvmRgQtB6qiu+9yQrZPhCDnXifhsFniu2P8KUqcSz7sftC+7vHwwq9m6jEGm24WsJ
	 ZaeU9Nzkj2zsDVpWtmOKMeWmW81Xof4IxajJKER1D0CmBv1qEC3P+zlfEPuDfXR16r
	 qRVmdFqO8Pch3mmuxS/v+KQShTn6hTgpU1rFbq1bjnnIRFg4rWYJJ+JZZx7/kSFBDm
	 073a36LCMbvAFs17DPVydIiX9AcdRpeankXoMvo7Br66gBFd4j8/UidZCSUiiWLzk/
	 tuF8UnvhkWLGRttyhvwMZ7bUsZ4yE3eh7ti/CnnYnbJtO7yvDC7L4UFOSj31y4ALR+
	 LT9qSi/HOBjUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C951DC7EE2F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 13:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168640320579.2699.17137273832810223105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1d846c30742a21ceb6d9e7305897f72d65d491c1769b3fec5f5df26e9cf64f
Date: Sat, 10 Jun 2023 13:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686403205
