Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32972306B3D
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778134054; cv=none; b=hMWz7Bafw+AEkNUJpS9akAfbf0soV6SFZZDQYe7kTIv2cZDanKnM9ohHoOMeCMw2WtZjeHxD50n/nPy0YRZ9C2Ktj8B0fDLofTerqqeWCgLL8w0v1SXoFiob6HdCZNsATyUb80huN75CutcdnVOPH2wD4e/URMQWZSaJ1m/FKZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778134054; c=relaxed/simple;
	bh=T7ohwmYXclLhfY6peFn68CatHNzQjDFTnLwQawE9SE0=;
	h=To:Subject:From:Message-Id:Date; b=oyO6erqkvIFH4RQQJL9XFA2DrCpFAK13UUqvO5fkJnRoVMbSlhRnlA5SHr/u9P29uhSZFxr76SyAI+N/Ss1CKoz2IL+ywa9FlsOjGnCSAwlKwKmcm8TMwaWQc5Hcxp2w86K5sOxdfHgg2PMaQnU0hvy6eDm4NmLRqCLi5jJEvnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McEYx9FB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McEYx9FB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F75C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778134053;
	bh=T7ohwmYXclLhfY6peFn68CatHNzQjDFTnLwQawE9SE0=;
	h=To:Subject:From:Date:From;
	b=McEYx9FBxjadv+xnMgP81nextW8u2ZL6x2Vj+oZybbQf/k63lSRgS7wvkmz8CQv1y
	 37vqk2P6lTp98SbkY49eFNXM4ySuKaJ+DMvX3M3NpOxxQyP2z7Srp7A9fL4ZhvI53x
	 YHLTUFl+rG0ivRcSR5PNr8VBk9jQviwaEIL3Gqxkdg5Cuw7gwJMbQEpUUsjN/ibyiQ
	 QGg8UAJ/btrlzPTnB3G53K+D3Iur9v+Uv+H1TGFDjZTJXCNW+o6p+eI3a5Q43a8Dey
	 zOqVF4jivHKoGPaW7IltLh7mCZ48pBl0J1fKivgm+Hk0NEe7GnmW4CJ6hjYs/X7ppK
	 gt8xmTnDE4KdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF49CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813405371.7790.1201467869939361623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb722bfc0d00c61167acc9aad8a34d61e9d90cda298b8acf83d024af450cb732
Date: Thu, 07 May 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778134053
