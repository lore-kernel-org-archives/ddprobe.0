Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB4162F
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIVh+iz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8390AC433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701046096;
	bh=iUwM33m+ebZNw5DfC/afoEaEYDCazhE8fZaOgMrJzLU=;
	h=To:Subject:From:Date:From;
	b=BIVh+iz+X60BGpYG15TN3pKZ6PlciGkGGUtPnJI+xFFE/DxwoDl9sIJABF0D68WR0
	 FljBQlbZM7IXmKUcyTIh4iprHEoGhBaZ5jwZkXLmGLcZXsDYVj/LGCjdfLo8ka0j/+
	 rihCkG6zAtdRiK1Bm3AKL+wGEfy8Qbajc4fFQiV7sFgDNnGbF4fV0kKkwisH+JhExE
	 InaFRKYJauyNWuYluDINfuHX55u0i0uziVGt5oLE9XhuG7MtPHQPVA9TjO0TDTs8Jk
	 rVc5bpn3Z1BeGD/4uW+C7smLXpSx2IBgG+sGXVaqqbxhdwbs7oxHgim3faxwYhQb2u
	 wDNXzJja/wRJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679B1C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170104609640.13522.12023882136627260953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a197ae07d54701168a32f093b01def5302a315d7443571ceecc63b894815b132
Date: Mon, 27 Nov 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701046096
