Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E06F16427
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF51C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687863788;
	bh=x+crYBOaSn/2/3Smm0/59x3YZof94MJYeM49pnJg2w8=;
	h=To:Subject:From:Date:From;
	b=doeym80FkAoggZQmpHqUaqcKxiZDU5uO9P2SfbCixtdLK+IHJacXjOfYUvIZF08B/
	 hFKt1CSt38w9I378N8cgrz/mx3v7Q1XGiRNaupjTbsWbzS4h3+bYzktYcrDafcTeaE
	 /x/PTToRgqWKTVokC5u64mbjKXM+zp9vxwcc+8I1yyMG22vN7nK0rmX498lrzTP/kn
	 PtN+/McebxHQAmLzxenVyyqHTFpZYINiUE+GLweCK7ecvxFcNWJsFtye46FnUTiynb
	 x1hzHVAom7o6e+Pd/zAhfg+8kPMemsUEwqc+dvw8PQs8ZDpldF79G83kJRQWVeHWaq
	 w+Zd7LB3WL+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64D3EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 11:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786378867.32432.10525130277378093396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c5d06869476c711c97e8e3ed3a56b7bade85e7f302398d8e83c5133c2e8cb8
Date: Tue, 27 Jun 2023 11:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687863788
