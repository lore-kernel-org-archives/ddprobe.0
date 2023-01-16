Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295E81FB4
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA818C433F0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673874087;
	bh=2MFEgwWrMKg1X60hTidqkSnt6A2lmuqIqH70KVDqFtw=;
	h=To:Subject:From:Date:From;
	b=pw+ux1SAvcTvPjaSA9zx042olRGICgDC9DqxLFP0//WkurZVPKSy2naMhpcCcfXX3
	 APGMKqn723vpQuBmh269c8WBliW5mfa652zNM5gczLuKX1y+pq1DT0uoqUwIlFbjX4
	 7CwXzH8b3JY2uY4lUp+MWS5P4q+7wQ+0l4d7mZMTSbQr7guFDVqsRanGaQD19vieGE
	 RPRh1SKmgxZtKd66vUe6BB7vBVq7rU/vrsFIZDOLTX8CXr3wgNS28Jb87paIuvTq8c
	 S1ofQDxRHrdDWc7tiE8b+RFZ2PafBcG9817KhnJA+WCWHFKPQ6YGe9vYjqy0MQn+Sz
	 I0vkf75wTXdOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7D7C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167387408755.5872.1782319105270376976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbeae68c96979f17cedd056d228413f1e6528006f0e694779e44faba0ee0271f
Date: Mon, 16 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673874087
