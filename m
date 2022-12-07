Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A5863E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DC4C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670398254;
	bh=5tdHFZM4vPW/Dhidoza1ECIDXWeJMuIiYsANlHVNkdE=;
	h=To:Subject:From:Date:From;
	b=mXXnZlUXcT3GdqsiAtvCKDWvJI6JRM7+OxziqZkIt0crguJnrZy56INRWkU1P/pMd
	 bjONgsB5QtQZcjjwC8AH9ozxYuF7nq/w0r7wt7BVe7W4BlIQht29+wanKr99r9VQR7
	 pBqYsCDr4VgQUOrE3QfG1fQBkg44UXaV1sep0NQjuxGS84H+p0PYXkbvj8gNZPKPGz
	 KVD6pVyFcr6976+CSAyQihCanvB9zuVyztvTiFJXLxGFpwHKiG0KLKXDnWJWZwcDLg
	 F0+2vVwzg/yEqlPf3Mb3y0D22uNcjlb5ZQBrtIlywip+dHHxc8eenKSoXwvTQNWv36
	 T5BwzLAlYMFQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F5BC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167039825434.29491.11969245788456133753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958a4865292c1b9cf30c2dd428a2cce111a2318dc77f5c70891bc7825bad99d5
Date: Wed, 07 Dec 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670398254
