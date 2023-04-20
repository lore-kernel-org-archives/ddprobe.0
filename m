Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4864A8F44
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 17:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA88DC433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 17:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682011626;
	bh=wKkN8L+vLdlbxeO8tsWdXDZ2Pl1mtRuEsgaLnEKSCP8=;
	h=To:Subject:From:Date:From;
	b=P/izmZSS+aCi/X8CkH5Et/MMiJ9XNBXCgR057cpefF4PAkOoX8fIvBoy5M6CjZPoZ
	 Qdvy+2oO58x41BE5SydPP/gdMSW7+tBxL01xbgYWCrNCjlRLAJo46MSF9WUg3FJxSK
	 9i5tncNhpYjrWDBz2A9RrNC5cCqkDgDHYEcFAVHw5AuyZDOcMg8f+sTc0YV4oYx2sn
	 xBqOh7QfQBILlqESfVHAoRcfJ/9lvQj0pssHRIyjeK3YbcXSGItDehjCARkcxgI+AM
	 lE44yUL7z75N204Az/Tul9mMtdzUm3jhn2ScIOofuH0PPR7pHT2A7O9B2zpR0yW6oH
	 a+QSxJfZwmXdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF1AFC77B7A
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 17:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168201162583.4190.3492672210719446657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02130efc43ee3b20fc25a0d7e23c3cc99af10ee1f6679e8861d3189591bd6d6
Date: Thu, 20 Apr 2023 17:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682011625
