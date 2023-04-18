Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDBBC942
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 20:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 019A9C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 20:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681850526;
	bh=JILoB73Z56J9/ARztfaX6sQIzyzrMoOw1qcfp2kHd1U=;
	h=To:Subject:From:Date:From;
	b=qjZ8PaenreodSGW+sZQm7q9ZCs1i++sAzFpKAr8rLf250HgGpLE1r0PPOnIGOew2C
	 s31+dLFU5mbrtv6CXyubyiUR48re4LToagMgxu1bqMnQ7JH9DtF5lW7cb7SgZWczS4
	 JkPuYr9FrlhHcpbcSTRPXo7Jq4uMHmR9mJPoiXVu/FG5AQvnRqI1og3NCZcxnJsbo9
	 iWw4kHtxMSv17Osy4Tg8MlkZa9Lctx6OnUhjthfV0PVDmLW0zUyEUgFOyr/CnxU63N
	 x2vgcX7z6T7HZp79oSJb2uNp7DxefcgkLmnSxu+TXd4uy7lPC8Ld3/6AWMaBWxv/rJ
	 JFN6vnvZwD8cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C736EC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 20:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168185052579.2716.17554351636063594995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43621e14d2ed93503b3ae1ec02f3c6ef13a19c9071497284162d6baac9ac2f3
Date: Tue, 18 Apr 2023 20:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681850525
