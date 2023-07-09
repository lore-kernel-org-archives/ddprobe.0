Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459E517EC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 02:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C346FC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 02:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688871428;
	bh=GPjpneH0kjKsvMY7QNTiXEfgokMgXjKdSqn1b/ElRew=;
	h=To:Subject:From:Date:From;
	b=bkG+sHKTSHiqQYKSy3yrrMSPep4lQGB7slX9OgsusvcM7XsJlDPShDmZ2WI5E763O
	 widyqxDSG7lGSkcy9n+5Cl3Zv3EM3HlKAOVu3B4Xyps0EWzli8xbJhXpAPc4nWu2+r
	 2PUjHxRlTx5tLWkG3s4z3Khr6jqyhTArH11MgQq1gbue+/7zkWc839/zGHCQIv6USq
	 m8KrA21OYXsL/j4syIBgRjstufH/tYvMPmdud+PqONudH/0lS/npbEGxa3Q6XeCD7b
	 hSjffLWEytq/ywsPUAydkxkZywen04Azu/P7g3KvDVYUaL0Ty98fjW3EIYew4xoaBD
	 R/XoIJhPWsSeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61ADEB64DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 02:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168887142867.32203.2650603746733264210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0309c92faa98d41836f69ffb3bcefc74556a909a6ca0f8f74dc936ba267bd7
Date: Sun, 09 Jul 2023 02:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688871428
