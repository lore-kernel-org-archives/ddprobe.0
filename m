Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A79A23
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 11:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7825C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 11:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687950788;
	bh=cOAPF3aLLX5GXGHmMLwMWsGN0bAbdAKOBBff07M6LFk=;
	h=To:Subject:From:Date:From;
	b=hLrrKqmjX61NKwAHbtJtOfhwADrLTiAI4cef5oJzRdFFUK7OeBlwI6qAMqsRFL+5B
	 h3ff85tCFD1++W0d9QGqeLu2qdKqi2P8adKRFr3txqG5dNjJ9TzK+GKcRbcpH7S7L3
	 ZkPskqUr56HKzH/T3X2gE5F9KHCqyDiXx/x6jsGB3ZHHZo8hhc5Zt8o9jRWVjESsG1
	 POdRy33WXmp0mLxjj+N4cEvNai8CIjsBSgQ2Bilc0Goy1oLgFBAvrC6/MIk1Pzmg+q
	 qyqou3SIhez1HP/lxtbVbbLqq0PQivyoy0XEe6sod4I3Aoy7rSP3sYZe6IFosLXOst
	 bxg2EFNYtqphQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EB1EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 11:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168795078868.7247.8872685588441858862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87670a25dd780c825bb50a99ee6e44550b2d1f820ab62ef547f61e4086bad852
Date: Wed, 28 Jun 2023 11:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687950788
