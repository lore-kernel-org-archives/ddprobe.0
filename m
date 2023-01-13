Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD87D2115
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CA5AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673635287;
	bh=K4eD1oeTKwScx/TEXNwaEEudlmKFYA5ceu3VKJw2DGA=;
	h=To:Subject:From:Date:From;
	b=NK30RqDtGs6tXUxOJ8PjpGKuobRlLmTt6lKmobRYDuTD8xdjLqF0k5jspveq48IYB
	 celunsZdlQaiplx4Kj3yzD1jysn8F4+L5DIC+C8/8T1pfdW3rD7reAw1cBP9JlexEQ
	 yS6SGuzkO5FAByjc8a5L1h8+lS2tihXQocdmLj63TYhP+aPl+U/HUUgiOVRa8kMHOL
	 qnLGFSFV64bjSEkE1J7YSnhjz4X03XIxWfympr9BmiGvux+imL1DGZHdeu7SC6AI9b
	 hcAKxBN3tuTTXyjLd4kcsoVU5x9aHeUxHU+wx+GbyUb9Wf6j08bWYgwL4B6lpF0rxI
	 D7/VdkYVvE4kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69BDCC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363528742.9112.15596703369408071874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470ea8019bec2d18b8756c04368aade6eaf6f64dbe42f5fc136938b23c40a6a0
Date: Fri, 13 Jan 2023 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673635287
