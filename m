Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79BA20F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8473EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671903087;
	bh=5WQcFrY7Ka0cuaaJ4Y/ZyAguV9fp9ZgrF37lKgQkOmY=;
	h=To:Subject:From:Date:From;
	b=hN5jzWWVXyOCLyFD+quASPO0nKHebdWud0Yl4n6C99t/pXj5gNSQf8rU3OaDjagjw
	 h8pqAmXWY/6P7bk8nzenDqY85Ktb4sU4KmhOtwv5iGEr5ibh1kDRjGMh9D32waHLv7
	 W5mfdeFSfrblBxeNt1P/pxEQKptMauoAuTdhz3tMowxiYXaz0GdQDi7y+R/gk+w4Ze
	 yG+NV1jlxSPSxiAozzUZF7Uz7nZ+VZKkR5jKIT3R8Z0LXEN1yynoVcaWV6S2ilnsP1
	 xLeklz3SZSO6Oqyg6SXjjtoDm6NnV/Ls+f/BPhGPRcUkbLvtGeUb8mG5TODI+Jh2Za
	 1VRDq+EWcAwoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CA7C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190308739.14788.17184746462051699221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 432b70f04cdbc877b0833cc61e6428273d34cb294cc8561465f95e9728cf8a5d
Date: Sat, 24 Dec 2022 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671903087
