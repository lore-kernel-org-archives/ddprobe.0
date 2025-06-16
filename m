Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2859D20C030
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750090794; cv=none; b=LF05hLhkLCIV0esAzpKcJzxNX5h1gD2G6nwmgmdR5FzlRg/Je6lxvHZL2nEQ0nPFA1ouhJrR1wC3Pn/wbDZ0ovtQe+Wnw6tGc+SbEemql2XUpXkWO26398Jin0/ek4JT22k99D9PQ8i7DenqygFpR1gh8+p182Ex+ezvGHvimoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750090794; c=relaxed/simple;
	bh=79O8cAU3oOLsiKnNLHIFOwJe71N4+2dCqx6keakvxKs=;
	h=To:Subject:From:Message-Id:Date; b=NF95piGJv9XMrPdfK7rHGscArol5D3kkdaN0087QLGzXO500CgvP6vg8D8KkDx5z6ZpmM3pw68SW1euVUzfhuMwNXxY8T+ct7+IL3VQuKXHrhhSwV4gM+OLxv9JWWOW6a2EckYDymbOUF4j9qhn1KOmuWK1qm3MJwp6Z18eH/Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NG/jVQV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NG/jVQV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9158C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750090793;
	bh=79O8cAU3oOLsiKnNLHIFOwJe71N4+2dCqx6keakvxKs=;
	h=To:Subject:From:Date:From;
	b=NG/jVQV6A0LZUxutCZxuX9TRuvkeNZ42eEkr3xhXxAqRkSqF0GHTHo19aIChmJTFC
	 XiHkp1EzFsXMa0jG0B7sHSvmFG5XONnzUGkxNPV1M8wl9XtR9wGh1YUZ008Pz9vQqq
	 2oU1ONuaJ3+S75gzE3/6CLxcrt1A6OuHISaqK4R9/0308WwJe7I+9/E2khuhz9QX2M
	 NC1FQYDIrj+azdhNpgpLDmSkWef+7AolJP4hsq5yekMSseEwxjMlcaBk5UpyoR7mQZ
	 b3douZK+1FCfl1m4HdaP64pDQpLqk51HcSlI98F7xgEVhuVw0CrFuR3JdJ1pg1gqXW
	 7umhesyYLGRvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FEBC71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009079358.7733.16541129872422060290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c29b7ba4530d9609d3fcfc9a45c8335fa2d2eee8aee0a8f7150edf298e2b02
Date: Mon, 16 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750090793
