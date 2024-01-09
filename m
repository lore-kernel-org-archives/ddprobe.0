Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A883A8CE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULC02AVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89B4FC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704815296;
	bh=0Jhd0gMLhesKxEYNSfR8jaD2+8UQHAokRzPZ05FlV48=;
	h=To:Subject:From:Date:From;
	b=ULC02AVxqr0oTwNbDMc6qrSH7ZTV6C8eMUUBX7nKPbJOs68eVZPvwfvWLnJXGtJnF
	 H4ASHAeRNfBZHB5JV+SCDW4+TjqramAa7yTtgnl+INk+nEfujlrqNRB3EJbosIgUai
	 DP9ivTiltAQMUfvwM8+QpnH0wzycBPbL5nZwQBoNBLE/yLDAlCBx7CyenXwmoM/lGn
	 DtmgJsZPUQBM7b62ZOLTvOPUnSTFmz7nkmE46DuA3X5SiPKLBdFBN4Ql6ljCD4Lc2Y
	 YZJcLLTj/ifT1KgAoJ5AyCRMSCN018+991JQdLIJ39gX/dEc/VjVtzAexQjUOmX3ki
	 d32sq42sf+fvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD61C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170481529643.15313.11499721572483807421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17bc6b712456df09abe87aa7538b30893b3de15615accfc5e7b3d5cdf605d25
Date: Tue, 09 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704815296
