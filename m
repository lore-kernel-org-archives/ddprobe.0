Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6041117
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 14:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B81C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 14:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687011608;
	bh=y9c16jD5AKwUgA68UJmVXNml5i7fXr2U19rN9HCcDMI=;
	h=To:Subject:From:Date:From;
	b=Ut+Gx0YGpCO7UYmN4/l+XpbWB8maxcA1XlNrF0yt6As/rjLpmaDWY7GtVk0mlNk9k
	 b+DohiGJlqF3yvTafk+59IYj0v4lDhO8CozPLZa5RNYvC/9kgwXzVFThAp6XKv30WW
	 ubw/hhZuuJJfQtf90FTCu5MvyxC6Y4rYQQPuV47yL+2osaWNOIejiB9G+OeYnbR5VE
	 L/YCapRwCY82AfpEGbjqHe59tH9nBPFiTd7ji3vDpMhlvHPdTxymNkLad13jnFYXhO
	 ETtqp3TYTyVe0hZmfz18n5IV5yBwgnj2doj+QaTjCJPRYmY8s/qB/HPQIXnLHVhNBQ
	 +WUKnBaHgwDfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C8DEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 14:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168701160867.14359.11063252614724949592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d189fbdc2da39f2d33bf5c8ff201fb844621e93ef1b72fc8109d6d06b66a0e2
Date: Sat, 17 Jun 2023 14:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687011608
