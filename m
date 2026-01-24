Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068211391
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769294034; cv=none; b=PG/1FHqUVfxmejIyNhHJ+qHCe6mwWS7mbE8+a3GZlz+t74bnmShUIYvQCB3lV8U0DkAtjJfJMPRF9YpmGysTsiIk1h2ul4AK3YdZ9Ll6qW5ll2lmbIlBWRH118IWRlSnacdREdsdKHkT+b5s7Zd+qbUkLIFWe08lmRccYuQSDfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769294034; c=relaxed/simple;
	bh=6/KuSIOLRdBY2EOFTCyQE8ERRdpDjbQUHNsZv9H7jtA=;
	h=To:Subject:From:Message-Id:Date; b=UX/kBi2Pu1CN87XeC2sdJhd45yP/l3PUTmGqKPyp8AlHM23TPobaGdP3tqCazaDNnGvSwlRpDo5/wtVI9Vv1DNJJ1Of5RaXSEolwkY4N3Qm9B/5txLnCqCbEArR4gmu5GBqu6ivJqlsF41Uj9L9pjpuFOAIAL/mg6zhuDSWj9XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLC+D7O6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLC+D7O6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCBFC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769294033;
	bh=6/KuSIOLRdBY2EOFTCyQE8ERRdpDjbQUHNsZv9H7jtA=;
	h=To:Subject:From:Date:From;
	b=GLC+D7O6rJ/D9uw3TcO2xYvH/w9FeAjZC73aYlVNS2JTnupW/gAKzSMOgIvRlde7u
	 7Acc8lXVTKzhj9tOcy6Oxt4cTK1NfNsW88lGASFqPnJpRJ3Fq5hSt50ijfgS22Z5TL
	 +LbxKWMwYRDhyMR9nQkMRGRYG1PaONl6U8DeRTn6VCfK6HtyXF9QnL3RJ0Ot3entws
	 unRNI7J+NpEyWITMEkb3L5T/+XyTwX13DfKpsUcW/j+wofkuAtsMiu/f4AnFdbWQsY
	 16ceKcoQhCv/eSYiwoTdGLy4NOrmNJ+HYz4vxXsnfzsln/dY36M8GYMsitW5tMOUyS
	 PXHpYcbmS1UBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D16D715F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929403358.32313.8863694680517437627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df97bafc6914b848425d19f2379762af7b22e58b51ea47dffafbeff948ee25a2
Date: Sat, 24 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769294033
