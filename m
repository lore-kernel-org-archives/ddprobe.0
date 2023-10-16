Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C8B28685
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 13:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9PM3bqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA67C433C9
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 13:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697464028;
	bh=u416C4THtraCJbrU7bCE0FeJFeguM57hIL7n+jvS17E=;
	h=To:Subject:From:Date:From;
	b=O9PM3bqKHNiLZqL9LPKc0aH4ZCPMNi5XxC7vN9uahOp+I9XdBhPjpLCixU69L99Rt
	 ZCe1lQExZn0JK39hDTr+zqlteNeXIrMdIbAUuJat8WYWtWRXhHsXundkV7HVBUzU25
	 lqVdSX5PhrFvx5DQjj9VoCEPfWZy3/AER27KNJNzMnqNI2Gt7bBpPkudtMrAYL0G2Q
	 HsYxM7Z4L++IKKHl6Vdzbv6wIKkDNCCEJHbASDYHvlG1uCRvcTqrQMzULg2I9vZfN4
	 OFvVBHpPsCcGv1URe4R+C0UWqMBcMLAuyGq9BeNQP9AyVIakbRAZDMMDqmJ17anGkG
	 2yL9s9ADzn7XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E00CDB482
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 13:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169746402866.31649.15087098524979799124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12212ae243f1f2fdc489a0e2d980b4841ceb864574566dc601c2c607b8c4f007
Date: Mon, 16 Oct 2023 13:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697464028
