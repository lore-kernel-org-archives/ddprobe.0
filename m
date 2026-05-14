Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F2A376494
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778734234; cv=none; b=lP8KggbvgVM2qjyUPA+F6zoPFoNGwLVc4p+GyRbEfzEr4ukU9zfsQh/0gFxHp7Vhj5X/204LHP5aoa6PyEowABEu8ogxcqTuYFEy0DZuUVi9YAoBX/zZvqgAoSCl0qomeWaiNBqhFitALUXmuAiufeDWHFntFv/6MP9MW2Onc1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778734234; c=relaxed/simple;
	bh=jauhtU1nMxpjsNdGxpWVpEN5ocE96hcmKVdy7/BcNEY=;
	h=To:Subject:From:Message-Id:Date; b=KchSh3tevmjJeV6y3c3vbEdidTgu/qZ43iweiPzR02HsmMwo/w2CMa+iDEV4+kBbOe1tZZ3gCp5WpDG2ddRIiR1xc/7sWFpM2AdgCX1x1RPI6Caexol2CSd/bX5j70SkcDK9KS3JHAPHnK4Iww69Wa/bdqSGzpHNBAf1bl2d5Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNIZ6ZwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNIZ6ZwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD0CC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778734233;
	bh=jauhtU1nMxpjsNdGxpWVpEN5ocE96hcmKVdy7/BcNEY=;
	h=To:Subject:From:Date:From;
	b=iNIZ6ZwIrew4Ua08ZM/EFKMe0YuJXQlNmMWzJ38MnmAGLpAPUZPNJrgsdPiondJkQ
	 vGL0xzMi0Jlp+NSUPyB4ZkEj1WRhBMUJtmN0GXLeiPb13EMufP5Kk9n+Yy30kDe2Rr
	 OrJBhQycv6/nqO8uMnZQH/8VE+TRVYBJhZRZx7otnlvLo+/XI6UqQ0g+EJKVrO7on+
	 JEoBa7WS2X8XZy7+Qo1W7T3Nljd8OzS7IWnyx7PNNcuGiA/eD45F/Olc6gRYjfsCW0
	 JLOPhsQUJyPsieyG5YZfxYCvDdziRBIRXnLtQ1eAjoAdVLKXWqUV5ArD+tT+Jnbbu3
	 dCUTYcD7iIuMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC48DCD4846
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873423369.5166.12449286876780402015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdcb121354b40111e86c97f792c08f792d7735db78edd5307e7ac79d874d5dff
Date: Thu, 14 May 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778734233
