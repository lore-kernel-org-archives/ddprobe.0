Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9961B21A0
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731947754; cv=none; b=YGLsUuwHQH9zU7M74rMXzz0cXEjDyPT9tr1NwqBpqiMV64uLD2RJ9Lls5jpbzkfbo/qWMmZbL7nFASNrM9COlX3ME/yKXyycI+KfgjhDKx1kjnAsG0BMeaB2nvjubI/O2I6dXykWqkp7VRVi3maVJ2Efkf5PJUQrCjBk0u6GkiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731947754; c=relaxed/simple;
	bh=eRfHh7/wu5NmO/JwfD3wV3zgTTrfpvr/Rs7/aQ9KgyQ=;
	h=To:Subject:From:Message-Id:Date; b=AsUEFy/1WrHGVfJagdIDeJu+DF4oN2J1PgCCfRtUxZeaCyhYdU+e0nBHgQz131NCl4TYbVOt0PXo79hbL6kyGc1INU1b4Nf/6YEyRvs78I9uIEPQdjYuXONNDjd2P7cXxc+1MPHassc0PwQtZBDdRsQzxanEuGxax5f/xql/4JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4hiQ3fq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4hiQ3fq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A795CC4CED8
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731947753;
	bh=eRfHh7/wu5NmO/JwfD3wV3zgTTrfpvr/Rs7/aQ9KgyQ=;
	h=To:Subject:From:Date:From;
	b=B4hiQ3fqsrXGPpdA3zBwbp2mnzaUvZJXbgayYv090LisS/H0X8NJb1D3eCgGuskpz
	 dMS7j4jtGgQrjRCM14k3sW6B1JRSxbynzrtlfzL6ZXqvLmOxNVDUCYgLtMzBQuHXNq
	 nnaPDneij5zt8gdH2OUr3iIxXwTT9AxHj+yR2v5Ey6lU5fUIYQ2r0i39Qnkro2u3qx
	 P2Bqem6Zq/rqCH5GX0/3xUhc93jU/KZ5V2REqfFhkSswAuXEiwBj40uOjwE4aKXNKn
	 AovjcQc0dDG/CVAmAangXWNiwmmXdz+FvGgpKuvtibtepJCOFyKp1FZwCtsbOwjR6A
	 bwiy7fV3vaocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BCDD591A3
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173194775359.10300.15061690301463649735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e64bcb660f5b86df9e46152edff7448ce550713ab62c1284532f41be125d66
Date: Mon, 18 Nov 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731947753
