Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8454BAD2E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 18:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED000C433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 18:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685988006;
	bh=Va3Z04uweyZg/po+0l3ngy6jDvJifSHtO55GDNmqT1A=;
	h=To:Subject:From:Date:From;
	b=BIAozmxQbSZuBue84otMDlpAo4qJMQ1SlqpGYpJeLMOarqh4X2mQWTmXfC/aJ5oDq
	 +FCYP9hi1JR3pHwOJd/3G9xxSvIq2TMPusu0dTacQx7cPxmrwxwmzy5w1t3iD4FVmW
	 7IjvtKAofkJxiYuh76r1O94pEW+fMiqElw74ZyrAUdbnOYflNepqrtI3JQaD0lqQNV
	 u2Jn7Z/VUEE6NWUMN+tUYu00phF2/MUjBTtV6NDrZzeUmuUgn68uKQHBKZshmvC4/C
	 gL7DTdDx+7rGdyToFnXyNDoXVi2E0SuQBE0Y8QHxi9tJZS7CQM+KNYUQQMDDTljMV0
	 P2z9y6zYuh7cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4660C7EE24
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 18:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168598800578.20456.1655664422275357278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5321fd24fa49a7b461b96f21f8c84a935a089b405c9e5bd0c5ebeba3521f6c
Date: Mon, 05 Jun 2023 18:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685988005
