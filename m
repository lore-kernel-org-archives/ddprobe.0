Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA9F2358E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 16:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8CBC433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 16:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690907528;
	bh=beKTHagdhaJpk6UIoB6yEQi/wZLu8ZTzhUsjnMam+/E=;
	h=To:Subject:From:Date:From;
	b=S4cjJTN2y4E+4b94LGOec1zZb6AZ/G8JIvotZppg6T+5j8DZTe5fICvIQsV9IxcAB
	 v67yGrr1lhOH1luoMhxJl60jz4yMJYKvF0toDr3VOSXoqGlL2l6pB/Jj6mn7CeBP15
	 jxEorOB5VpWkteCvyfZXMcJfmCbDOj+kZp6BCsAhZVwEBKPui0d0lzICY9Rjjaxi12
	 K48vsYxAdksszgN25/8tB3K/v62WvIFf0wleUSCoylM+V1WtitWwV2UrcwS20YdzkS
	 L/7JH7wWjThKNlT/Sy9z0MkGV8UlWBHkCRqnuQN75rEuftqgvHB8asdSSlCWMRgjww
	 rGll8G1+AikMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0736C00528
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 16:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169090752871.27141.16894824832714243917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56fa8e2046f471bf2d0dc0c99c09873833ca24072cb79ad385a090430d0e463d
Date: Tue, 01 Aug 2023 16:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690907528
