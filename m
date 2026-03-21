Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202813451CD
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774079694; cv=none; b=Iwl0HRvbQFGaZ2vXW/bWt5XL3tgxatN/1Bo8jLpr7sB974hblIOwn2yFwRbzIP+isxkCcViIlMc/hQcupc2oFP1V2TJ0rR/3fiJIBuFPOboYF9uuORHCIK5Q9g50A/daiMmUAsdA4af/b8uay0RXZ7v/JaL+A9m5vED+ns5vBgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774079694; c=relaxed/simple;
	bh=T6rAIICfLJ2xuexO6GQOMdaZwDTWkS3q7zr/Fcs9C7Y=;
	h=To:Subject:From:Message-Id:Date; b=TeCDEr7TzwO3TeLPx+XEhJQYsTymXXs1U2p2wecb24QxsM+f39I4KhTdtuvMCClIWH+dAysBYticW1TtxMvKUyTi5uLKCLO6JGkFY8K9cwAjkPuht2biOsMtdSzZd+ceTijwkFd86+v85q107NsnOSL6kMktwSV3cJ2ODTb43bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoL5kmSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoL5kmSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE23C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774079693;
	bh=T6rAIICfLJ2xuexO6GQOMdaZwDTWkS3q7zr/Fcs9C7Y=;
	h=To:Subject:From:Date:From;
	b=PoL5kmSaWKxLTfisGwMcjcdIAGaULsG+4px38q3UOwKBLwW7XfXhvIMDCvK48hpYS
	 3/FeAOeHGI+xmjx9fg0EZzGEdi2LiRajiabbeq/AGAn9XQSi9OMB85lJheRRqyA07t
	 wcJVBALEEACe+Ita4OvLGAg0cX7dFGmOX0ZUD1Wg6np+jmognFum1h80b5j34Zn7s2
	 r2tXiVWUOcTn8PjLClfV5AM67Un/cR9fAkbKu1+wsKq5Ftem56u3Bw0cRDh8RXnPpE
	 UQtHI42bsYQUjac625dfx0m4YvVUi4xjEZd1Ao1KvvfOzT/Vvqy7wccQyM/bjxNGrN
	 OZ/Wz/wtzlmuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1F91094463
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407969357.19793.8570697820174875576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0032626fc67230568d2b43e5846033fc5ca165f366e0fc442f2c2a1533edc58
Date: Sat, 21 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774079693
