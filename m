Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423B7134CB
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 20:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC3C8C4339B
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 20:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684442766;
	bh=JAFLbJYLk+TKQjtKxuqeB9wofVzyb4X05ayuLsaPYsA=;
	h=To:Subject:From:Date:From;
	b=eUhillJyuA+ULbrr7F2Cfsk/lhvYcak8xhpzA3BjjvU1HFeTBUsjE7zn1CSz+ijIw
	 n6PO0rQx8A6FcaUo2gZSU19714HEaPIOotayHQpFKQFUvJfZYiHgGHofHgQ4SRp9kJ
	 N+X+XDS5M9qLRwwLNahE+RV6WW5PqztFXM5IfXv6yl+j/wGvfZ3ydWlRYlEsskrRTh
	 8nYC9Vx6yrvSVjARmpZ7hp7jrrB3rBLmnVufJ3DS1YxynVLk56eoJzedfvg3yA6koz
	 EsuWxZhW9hQ5nN9FqKy9GJvsLY/wtsu2Gmk6GBgUiSuoiqMIyjZxKjy8LXrXsU3Psx
	 aOzqv9oTE0cmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC27FC77B7A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 20:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168444276576.21680.4704411951689862960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c9d726a87ce2def19f7ea436754447cdd1c7967a0dfc30d171714d697b5bff
Date: Thu, 18 May 2023 20:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684442765
