Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5D6627
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FBB4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673650287;
	bh=5+bVAceCibbq0uyKKprqAfbj8M2LdOYMK32+QFkbvgU=;
	h=To:Subject:From:Date:From;
	b=lwaVTQvCj6hCpAIlPQpKF7K5u94tEa5MKCP2IddMLh9Lk5HEo4Xm1af6eXm/Lutbh
	 WrJWL63jOqf1/a2hy5FIHDeKQeiObis5WqVkAyp2odhUYtCZywRyVXn/hbYjeNKt6p
	 y9NKo7TQNUFP3QsFgCZ8glM3QNXYwNPcGVUU3QmzykRizDx9uF4dzS8CuENW+AzUSj
	 bGl8WN9u1pEKNq7gOKvItE/1GJ02OwpZbnFRzHQ0a8LLrzLyXFDcmEqJHpkX1bkfXp
	 Jd1CY1jImGvX78TZFyBvwG2pcwcxRIpL3ZxDE7eXBYpxxqawv+Zi12MtrMUzWMFCvi
	 IZR0YFakiThSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6677BC6379F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167365028741.31842.16948077278337586119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222c3883f9ed16523003c0723dddfbf478b41370e038933792e8d130c434f00b
Date: Fri, 13 Jan 2023 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673650287
