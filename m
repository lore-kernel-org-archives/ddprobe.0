Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7525C98
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 19:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7354DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 19:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661802052;
	bh=mmifoDRBPm+1bz1t8sjb9z5+zSHFpWyKDOchMq945O8=;
	h=To:Subject:From:Date:From;
	b=p9FPVmmsloeH6sxsxBYTQa0VCg+NIPS0HV9eeQp802RYQiTIAQecKG0AtF5rkBHNm
	 0G/5mQEXcWvZcmTBV6HwYQVBDUq2EZCz3ety1VwS1hBCITZiQeYnHSRWpaHxTq+XqW
	 YK1v9LDyL8E+OGYpw1PIWSlmuIG6x2uVEoTyR50aVH9ma3NcJnKnqG/ExoxkMB9VwN
	 G2/pSavJpbnpNQrwUJ62JYZ/uUGR4gUW6pmQH4+i3FNtYJQdPWh3RQCZk9OWLcXen8
	 9/6vYMIxlA7pdzznbLmK4GL3R4Ifr98yHhsRwRVZzWW0xwsUXlpsUZ9MCtWvKb+uCN
	 KL+PeqHxq5VRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590CBECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 19:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166180205233.29042.66455844693122586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d86ddf4ce0fce024876c4245f07091f6c5fe70385d8fe9b24672f111789cdab
Date: Mon, 29 Aug 2022 19:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661802052
