Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B9B107A7
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70246C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668033654;
	bh=7ZEQInBkrKUalMFrMxKgtEnLnuM1mMibr4VxBHjrR0o=;
	h=To:Subject:From:Date:From;
	b=fTC96QCnQCRd+5mkEoxOrxjOsuNFHwR7lbG+67PK/Xsuux9CVxsPAzZDLzYOrnjBg
	 oqUBywPWvKxgHgAv1IhDa6kG7WDU4bQGRm+s1ZyZykp+YOq5/mmHw5yWRAGgPBMqaH
	 WgmmptLZcQUl5yCPxCqnAgxjlgIy3uqUfsimi/wzvy3xzpWsSKEy1bs/jnFMzKWqL3
	 +qI+ihc9rLY5nqy7Q21mxwrvZXlJ7+/WBxnUZUxV+/zGbpuuHUVhm1kKQXyI3e59x3
	 JCo5yTh/AMBaSOrb9hVh/9fexPpJz1+4JoMVc+qfK/2RfT8wgpevK7ebkM0ghvBy+i
	 IvsuzntIgcOgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5464AC4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166803365433.22475.18176275382194021152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49bcbdf015191b2c38ae799139b8519a79f04392da04578185cc025db888e1bb
Date: Wed, 09 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668033654
