Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D4A7E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DEFC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668994854;
	bh=TyYFz4JTaXAGpjS3ovqhSgLo3kVaNVdC+EAdwAje1Rg=;
	h=To:Subject:From:Date:From;
	b=J0Uv22OwVMY5SKsCTBBPiEVitx+0srKWJoAqrWv3ZeuaoXtxvLJKjCx8Z7RenBEp5
	 DegXvmadPW92GY6znSqHLdXDR/yFhN9SfLsSSbpuNny3ajiZm09NqkF75b/xuOhjrx
	 JYiy+1WNKqcrGG/ElyaPrGANAcCs517gdwQgGypXHG0qmQVVwBpP8IeP+lHsBHkxoJ
	 M9Hl0qpMuuxdHn7grAnMlIbUKQwQ6gR4zrkT9TgrFzsVqNUWfeWGhpjMAobjJCTwGz
	 pW9RadMQSdsMMASMcAb03TBJqCd1Gnvzx2I8xn51mOqcWT8P5Pu8v1R4XFkavd3EHA
	 +oHjiXddRBKzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523D1C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166899485432.20241.17665378985066630676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77bd747d409ebedeeb876424faa460aeeafa89f88a23ceed698b6517ef66093
Date: Mon, 21 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668994854
