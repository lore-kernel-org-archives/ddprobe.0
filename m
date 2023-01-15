Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2880A3C
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86034C433F0
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673794287;
	bh=EMO5p85cEMOIoapl0x5wlOWDCmUhCZ9cfD5hHIdE7mw=;
	h=To:Subject:From:Date:From;
	b=uhNNovtGcWkVVurWyrFn2plnVtAXYA9bibXAkqzt7J0sairrytQ39tA6j4HvKB6VJ
	 5yTyRZrO8477jjbqxSWEE5UybgPR4bRqelxkJaYmri45YkpUwZS+anem0A+jklSsgb
	 Al9g4a+LT6VQW0DCyRl6uER8FwF0AW6HZMgtuRWc0P2Aag5VwIftAeVgJb5+awuWmE
	 +rhM24SRG/d3SCES6p47lUrzNHBUV1BFG8P1ozUjiHviSDxeIL5JFiDfCQ+dhPh9Sr
	 1aifNDrGGgRKMmPHRgBkryaj/yG+l7tQ6yxqLdKrXVypzo/YqDXM13HwMMxOZy8osc
	 CmoeGPvLCnu8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B7EC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167379428742.13506.18366405793270065217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a73e6786199e65241bb9edb11eb0e9baef890e86e68553c2d3959570f67577ad
Date: Sun, 15 Jan 2023 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673794287
