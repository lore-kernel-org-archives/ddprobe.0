Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D978A932
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 22:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08708C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 22:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677019266;
	bh=LYjYvABwgmNutRh7exuZIDGfTes06Y0+Np5gnJwr9rk=;
	h=To:Subject:From:Date:From;
	b=D/kghr+224PQuzTkunKPmmew34uTlHCKdCc1mRbKRD3oUWLQo68pU83q/mWVxRbM0
	 NJDrGNXkbvIY5mt5OqvokCI01Am1YIo1rZ7+OFsvarjpCzVlUeWrg+pq9D87X9a4Kk
	 KkcRq8Ha0ofSUzboN6tUbggTwz+JCedmwnYAmR7MFZ6YRNmUXeI7fWKrFLgB0+TBu1
	 v5kXR7AJa6Jpkk7aq+PGFIBOqBuPaDxI5Z4kDHj8WTkiefCvLyik7TAi3cl4fFjSgK
	 YRGKDjWm5t6peUXW/YUA4JXhIbgSObgYUGXHCL21tMJqmO6U7/Vy3cNErDy46ywSjR
	 vhAwA6r/YX0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE120C61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 22:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167701926589.12482.8533085099424130320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7fa211770c7de9c8e97b0b1a60282243840656609afd53d62cf8ba2cbadb12
Date: Tue, 21 Feb 2023 22:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677019265
