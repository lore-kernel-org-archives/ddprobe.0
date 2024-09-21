Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCC5376E9
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726962354; cv=none; b=du4QduURKqt/hu56YrF6nGQSQ1NSTH7fuczfz0heY1FJj9HYxpTlTP7eSpGYuzfZPQ1UZ4TbxQofpuyJIn11qi5u0f5SoSvACGdlQ+4HM1Ap6d0orGnTK0Hn+oDPgsIHS1agwnQ1Buz2wXSrmdoHrDvfCRQkV2kADa6ot2mfyPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726962354; c=relaxed/simple;
	bh=JU7tXISKc/6I3H0oUF68K5/9nDj11waIDmSm+M/cDrk=;
	h=To:Subject:From:Message-Id:Date; b=hU11xtNqWw6P9OKimoDWgqbf8mxCtx5wc7zjiKYMytXBlbRlAd6eKZCkI/5PPjPROP9Te0DuMs+AwxCLS9yxxEohCRtEqsKCz6yRTbV92Xem5XFXHtaTaMYJDDRMMKTPYawPGfVINnYZGG5dUCV0zWTUAglt5CF5w3TPREL/Z70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XC9Y78TO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XC9Y78TO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36E1C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726962353;
	bh=JU7tXISKc/6I3H0oUF68K5/9nDj11waIDmSm+M/cDrk=;
	h=To:Subject:From:Date:From;
	b=XC9Y78TOCtma081Bv3JCmguuIXQQyBZuByORVN7lDvWcY4OytdfjtotNhYsj4+oIi
	 x4zd2L+GXZWX/t3OXdKefnDe8OgLJ3jjhxlzXqhymG+yKCPonJ6TgLGQEG8IRC9b1R
	 ZdEPioXCdU+QyF5Z2k96tYSRWz2FZfYE/nw1sgZ6FBrXg7RFgmdTxitghXp900V5hR
	 qjpf+Ayl/3vmzGhZs9Vc5UReF+sxH/UfiDKXNbLFYkyYAr1QNal9oPAemQUYlcR0v9
	 edpQFNjdst1QLQTJvZNX6ZNnOgYsifKk27cr7LYKEEa5FkaZeFc/EI5yZBwySwnTr6
	 ox3A/4NuJFrDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F993CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172696235358.25648.15313622153047072520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19f840a25b65959f5db40db268284c373d4b6bb597feff851dd667556c21615
Date: Sat, 21 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726962353
