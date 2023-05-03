Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44463DF71
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 20:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C55C433D2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 20:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683146405;
	bh=jyWMO4GVtUiMimSZw6T34lXMAqwj/bTxG631D9Hk33g=;
	h=To:Subject:From:Date:From;
	b=IcmA9W+AHZq/6z7YbspX3Xn4PyTeluzhKZnOwJwxt/5IVMT3ymlnFSisygbQqo/52
	 UJEyiXQ60+SKskCdVHEE0N7xh24VB00mCkl1BfMQWv3rkyGBFhp0ATOkX/nxKw0q5X
	 i3j/DcZwjMhRhhXWQFrKb26eflgNBMatqaLNhPhR7gKRX8kXwUUCPoggpxwW81xi/0
	 Jnnt1Ab7I2Yjcnxcl0NcsdhJATE78PNV9/8RyYTgVRKXT4AODyTcOraXJ7gnkpKNwp
	 /kyaPCttmEFfVopCjeki3gVU329v+ecbr0SRpyzXuoYVklKSJ3VjP2p+LY+NY8KXDb
	 T3rWm7Ugsv+Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8350C77B7F
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 20:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168314640581.7369.15020854649041559931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f6983ddff2f22d30a24d2525b94c1eb7d4cdeeeab670b3dfabc402d54ebe13
Date: Wed, 03 May 2023 20:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683146405
