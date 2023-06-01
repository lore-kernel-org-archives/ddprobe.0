Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A74DF5392
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 08:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9288C433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 08:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685606705;
	bh=lTBRUR93ZjHsnbzw7gDgSwx1IHAVYW8N+tp5VpRphao=;
	h=To:Subject:From:Date:From;
	b=YAOtda3SjckQWzrmDlczpqFQxc1AJnNFqAJ4maEIskticIqdsDoxLRzU/Pi3uy4R2
	 gRNFrnQPA6MspOpENpreBIAi5v2Gqt9PqNHQQTzJ7FtaZj997JGFb1gH1nWWcHCAWo
	 Mi1CfQffZL/7rs0ZnDuinVQOjz2Blr1u228otFSix2bzprHJWa7co6AsdxDCqqnxL2
	 n5SzZwCU0HFVaRIPXs7LU8C0FaAuKF8SzYxdz16Fj06Q2Y9OF1tbTuhIALQYYpSQu9
	 pDqYYUXz6gfG66mHCNoZLdZ2J5dIuw0f9yiwsMVigXZnOq+J5ijCQivlfq8jE++j7Q
	 wtYNe7Son3bnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C87C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 08:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168560670575.30326.14106494296316560794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868b211c6ff70e76ce1d91d96fea4bf545aae6f944e4b1eae837711920616aa2
Date: Thu, 01 Jun 2023 08:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685606705
