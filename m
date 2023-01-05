Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F7A7FD
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ADC1C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672894887;
	bh=5lnqWFdsU3aBJNR3A7QH0xPV/4B/hh6XMavzeNNzvs8=;
	h=To:Subject:From:Date:From;
	b=cCyL58gR4V0mlQa33w9vk6QX/L3hLgMtSp0zhI0DwtccEt2zLpzOcSrhvF0L7p+7s
	 hYJeT/2XFVHx6CBi0gF5eMk6KWgyalHgxRdbFXCJ1S+tlVuyX44jWXhMafQeqk5m24
	 FjxF+3lMs+2D36ITjNowDu1bwGaeaC4YwLyCRla2WYqXxR9D8/3FutSf2TQ7uvzxs9
	 zcAgd13dIX23KOD6mMMi6LlMs908pAJ8Hi8VgXdQnzlnEEVkb8m2Nw3Bk5gv5xKUTH
	 1dShnoCOKh3xMoFWoHmY3W+Ql1uS74TqPzxpiM7wG8O6iNiWVkC5cQADNZb4X9FPr0
	 Yl0yTkST6RYEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FC31C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167289488750.3706.3397253383947667560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d56f11887261638a56ad9f5f83a0237b6da3df7cbc2e8f5bb5086a18126f27
Date: Thu, 05 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672894887
