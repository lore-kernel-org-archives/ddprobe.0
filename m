Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF916433C8
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712638697; cv=none; b=AWPkzPA26b2lhOhNP9p0W/Smq2yc2PqFKkPQHS1jh4Db93UKxFjs2RJ+J52YcKAEMvHuEZeKxmCDYZY9+m35z95T20AFZ2dAJ4U7MNiK1QlwfgawGlrMnKSuX7vgDa5HPd8QXePJdCJ+qnL89bT5N4FQ7uVbV1zqxoi28TaIrNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712638697; c=relaxed/simple;
	bh=ztpOgxmhjl/jULSZM4gpZzYaV5qnwURiqunm5DNKj7M=;
	h=To:Subject:From:Message-Id:Date; b=sUfEomvWZgvtqYi/9JhfGCUPlq7kLH6KM3hUzKGE+6KBYNdLnW3iM6+cZiecrY/fxFXMPYlYQoXaCn+uYBZQxRZWjxoOJwetu+t/IHSu5gV1DsoqtL77diwudcVbW+QNtvJR97cKsidZkCKInp1aU6RL7qxWsx+xMennPcVtTC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssc1/4/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssc1/4/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BACCC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712638696;
	bh=ztpOgxmhjl/jULSZM4gpZzYaV5qnwURiqunm5DNKj7M=;
	h=To:Subject:From:Date:From;
	b=ssc1/4/fTI8pD4Imig2r+isf6tMy+cThgiSonpIYAMduJPBDE1nJBr0osVqG0UD1n
	 vl8BFykohpCATZN1gJxZ0anLMrgGvFGjNgZ3b3y1EnpssV024v+kbFD2qS/p1vWkQ8
	 Fnyxm8Pvav+Cnwu0qJbb3L5GL/2SxKiSLg1REf4P98KwgJRRcJ6B5dvL8c8ILd+sbX
	 eoUSYlXP9WzAEkQ1bVWDXh8QBtBv9Rc4vdFoc+lV1fcwFXK4AvTo80CG6mOZ3Y2ViS
	 HSQ6aR31nMa3/FirIv3wA0VW+c794CMqcbBwX7yAdGIzp98dD66+goWQC7xE45Okd7
	 dahzBh8ZLDu+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647CACD1284
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171263869639.11958.5877320814636945105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970ed6cfa6d82d057476cd0e135a633d7c75ebd83c5ad238d904cb6bb83534f8
Date: Tue, 09 Apr 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712638696
