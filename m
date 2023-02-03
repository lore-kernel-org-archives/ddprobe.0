Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8817F
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 08:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB94AC4339B
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 08:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675412765;
	bh=Kg5hDZAZAWfePIj6UPmtqtqbsZLM3tYaWqc2Up4A/uQ=;
	h=To:Subject:From:Date:From;
	b=E4TyUW08Rtb3/Z7P8jOX3lyU8pzPHNyoYnhQ7UVIeqawJAEMWORvfQbIjczAnfapk
	 dLsRBicHt+BbdO5SFmWl9Dx8RBuSAmwrtcGkFWIhs3lpurAfRvuj/QW2KerksKrNGF
	 EUfDKRW/YAjWRt1C7smnv85ASZlsjV+PJsXbG+g/sktqfHIfacA8fvBV9dGSuZuyns
	 I8gA9IZw5LrUj27Q5SwSNHhVt7bBHx3X9oyhpImZkMAmKSooYDTy5EgtFSRwgZUmpH
	 FuE9AB9yA+i9mAbb0im+8lL/seCCqqCvr1NCusSNt+wEpjsZZ9t4ObcUmNBDblA2qY
	 Lasgj6f4998lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0811C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 08:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167541276577.5336.1525339590615421008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4208f24dff866da23c7bfea49d453d4849a1e765399339aff443a890f31fbe
Date: Fri, 03 Feb 2023 08:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675412765
