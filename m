Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556D08F40
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 17:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0074FC4339B
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 17:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677779766;
	bh=lTVttHz4OQKGgrxcfRfsyGXIr/1sNRtfubTVzLIGhXo=;
	h=To:Subject:From:Date:From;
	b=jmGPOo9HNrLHp8YMrmiOGkq/U+WBfmJZQL9X1qS+OlciLoEJ21hkR85FQK6WJp74I
	 PS3wzD4pQuYbZlF5ZYsk4g9P5nr5tMLqHbgwdKjcU7dABdkQ33GMo5rTuJ9X4gZMF5
	 9xEJdxFJkKu6jBgOQGCcgVN4HRmsLSoQBH6h15dpqQZYX9K9Wr6kT//o6j5uo9Br9f
	 xUCP5mj3mwJWsGsW+jo+2/FDVv9pNiZHY0wn7fSndo56BYR3mdekYbdJRnCtB0uA9g
	 gxUdCymhe6asQW1ikqdjQlARlKS+2hCQuUwRLRGfon2BABG1pVULP9WuiR1tfJHyGk
	 zPOR5xHV+T+Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6BA2C678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 17:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167777976587.12706.13648199548006520095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8262e30fadd169ceba7f26533d9d4c3d6022d0e584b0b90f12dccb846b51fb
Date: Thu, 02 Mar 2023 17:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677779765
