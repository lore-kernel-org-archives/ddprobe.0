Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BAE19B
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C2E7C433F1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673440287;
	bh=b93pZyhPc8ROzhCBJeQxB76OlR7ySshYjEPSwS6so60=;
	h=To:Subject:From:Date:From;
	b=iIO4Sc6i83AGWD5vnQNMN4InTnYmeG427nmZiOIbxVOiWelYZNiXmhvM60sylvsyA
	 dMGtescc6EaqXiT4qyT6+rhrkSMALzOeNHs1lm7Uu1z3bZ6wOBeVydJzp1FK0AFZAS
	 GkdqqnrEiukoSWNR0jmCAhrmd+guRvAeE3cGcgDVv1cv3tsrQBxhMjhZRUABdvCz/F
	 1OV2DFfi4lzEdK47hdP9jmv+HkN/PDE4BssYTQUhqSsppkMO/u+a3KOXCvwOQbyvfd
	 KHGHP0WcvNSpMvrnzkzOWo7zWP+9pb61Y613iWpJAIrZtXcAyhzc3at7v177NnJRxm
	 Ku5S3F1kzc8xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E219C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167344028744.10469.9805159139825601778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f4c09afef38ad14daed161dab898bf31872ee14770b73608fa540d95a9fd93
Date: Wed, 11 Jan 2023 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673440287
