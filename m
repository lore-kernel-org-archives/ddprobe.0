Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95E86C8E3
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 15:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE0E0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 15:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686412266;
	bh=+RM6MtBM343hu9EREn+fldkrhs50U9IWN5BSYfY2sjE=;
	h=To:Subject:From:Date:From;
	b=Q8C5dqZh1EF10HSqmqMHQe/44szgDDX7FcsPioNXmvnX+5bGl+BALueF4KjwIW4K6
	 uF9t2Ocsn0Ey3NKPIcpaDRVKwTwiH8cHRdUng9eaTXt3P3Uh8GvffWnYoPokevdDS5
	 F7WQidiiTFdJ40jqlakZ3TYmrem+hbR0+RPO9apd4rhPj7HNsFpTwlLP8BgaRRVLI1
	 IznPCs4VDQ4Jce7z0jZJDWKs0k6VjqlOeWKxXZNAsfw3ERmhV1OTAv3Pc4NcERtNTv
	 nfxQ6t+1yoUNUkWrF44IHgN+6wz8XXItgGKtwqr8pD/qlm4oFUsnkNtQtIvo5cYXlf
	 CsC3wed8fLyUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE805C7EE2F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 15:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168641226577.12770.16722191851816293436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1375c2447535d8555533b82fbe329d3b0673ff261216ac5537abe91ac65e2219
Date: Sat, 10 Jun 2023 15:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686412265
