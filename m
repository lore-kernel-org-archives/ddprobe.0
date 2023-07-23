Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA3C3FC2
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 17:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25E1C433C7
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 17:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690134128;
	bh=mPL6s36VwgHCGjPZbJiQuR8eg8C0ShdkOOK5wzpUpms=;
	h=To:Subject:From:Date:From;
	b=FeOdlqgh8DDCD7uTsfDWqpaJ7H/0RDUR07Ftt/UTkG7wU21uBhpdTi2Rd/fUiH1gL
	 7UYybVvHvD/0/ByEjEhD/+iM/a9686r5ZZr9ibkx1d+oqg2tylynABMrlxEJhu2/45
	 EnSqN+7vzUbrZxSVQlBgWKOKcz3YhkbjSq/a6BPNp9bKg90ev0NH29LuDRq04XqanQ
	 Z3eHBC6X+6KJbcjt8OH67KwYuIHzq2KlgJ0alwr7FVHLKi+wuLUBaNYuRlzWxflhy1
	 ZmZRh+d7uCKnNZOizv+t2at8ObdF2Gg8gJmE5O4karTDRJL3WVAstw5IzoDSiJ/u+y
	 iV2nMH1In6VXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B9CC001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 17:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169013412868.10883.11989101878071411085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d96464a97bcd80a80bb222ce43aec5e18b861c65eea4137ecffae6255b28070
Date: Sun, 23 Jul 2023 17:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690134128
