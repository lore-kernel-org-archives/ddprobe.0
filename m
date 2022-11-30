Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDC0BA51
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D6E0C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669846254;
	bh=TLcHEi5YpRV7XvnJ+uZiceCno6eb0XPaokPohmeosBc=;
	h=To:Subject:From:Date:From;
	b=BZwNvlFDGS8Utebse0VCu9dPuvygl60f4SygOlMZPfP9P1o/xmDIAlt0lXSu3U8MH
	 4TCe87/BU9rJndT32aXMonIAuAqTjrTpVK4mdTZTPy1AzFUfm7fyo8P+EUgHbuAVk0
	 qp7g3OVgq+xhp9Kjas6WKO6bjIsBpCQHL5hzpAz6qiC+95EQApekdh6/Qali+Bl5+G
	 57AoZnHLwxSaPgbEmx+voM8QYiCBEq5b6tYhkK7oKnNh3gN7i73BS4sCRL09KGOjii
	 TJUU49eb3J4VKqz/za1LLsoIOJ7Fl51STv4T7+MJBHExRzGjkxGzJT2nOTLT89klzW
	 X97rdnk5RXWBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55772C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984625434.3241.6913694651910009915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477093f67d0680b49e7d97f7e159341a86c6f80616312efbc3bcfba621c10ffd
Date: Wed, 30 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669846254
