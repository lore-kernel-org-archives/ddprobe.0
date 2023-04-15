Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDE9EA3
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 07:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA71CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 07:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681543986;
	bh=j3AWezMLmQXGKNnhbf6LPbjCMhZXshKY9jdonBBejZs=;
	h=To:Subject:From:Date:From;
	b=V4JcgwiPdZCfihYpgmsBtymPfBgv+rpAgK4X5TaK/paj8qDOGNEsEphyI38z+rhK5
	 jz3HBCiGZgurTo1SqEj+ImLqJzXW8cRAvngki7TtWDVn4cva1GYK4N0Dh9fOwxDX/b
	 3DIz2JpJP7sA5XlVzkyT6r3HCLzvm8BYJVURajRSJiQxes+E84GgdgoXaf+xCkNDlI
	 nxHJmyQNaumKWD66WZjsvESPjKZV7osj+99K8SCXS42yvDu3L2IhVxSpFLceKE+jqe
	 aDjMGfOyjJWh4wGE/3VTeZW7LdGQEZsIhwkETtZr0bxkYW74SVqHrV2xHYOFND231X
	 a9hHsLIjionbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D12E2C77B71
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 07:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168154398584.1161.13344314831519727732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6756e728af85d61baebf6052bc0a6f6c32f53ea0e4b96d938507051cd2e774e4
Date: Sat, 15 Apr 2023 07:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681543985
