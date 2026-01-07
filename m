Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116BD29CE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767757434; cv=none; b=npIu9hs8qU+DFRoQo56ECrfVak1j1FO1m7kDFdEInCKRBTVN8d2hwPeEaLOz4lFTceL246fkwLJlIX5OrvrAg7AxaRTdo6UGPAJiw88YMmhbVR34yE7Ol9UIEYGn6IrhBXkjfCW9ALWzZ/8b4/jup+a5vVi1FMfR2EEG6SByzXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767757434; c=relaxed/simple;
	bh=fKgFQu/C6m4TDKqg5tomK7JVYl5NAVVILP7vkw+m4is=;
	h=To:Subject:From:Message-Id:Date; b=M1Pju1/O3JrEWolnlOGRlb2QS7GhXVaZZETBYm/+5dLF7mZaKCviiZ15SATwUPBPMel3AvtURl3bHbLIjAA6lJU+NO28aM+K3qL1ntYLmgmT1l+XwDRf0yDq4QAe+oj2amSlhspDZLQbEpu/4ertCumeh18embEE+FTw7kvnnA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVhhVF+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVhhVF+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00E3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767757433;
	bh=fKgFQu/C6m4TDKqg5tomK7JVYl5NAVVILP7vkw+m4is=;
	h=To:Subject:From:Date:From;
	b=ZVhhVF+VBjRJe8oSD3XcmtS53Kd2/xtYA3hMIXu0D4/MroVhRQV1197hEJVtnj5dv
	 ef6OlUIt6aKAKLXzNCN3j+82vOhiGZXf0VeMj00XlK9CqG1nSd9x0LFn49eBER9L4U
	 c1MCkAJubrYx3KFk+RHEpd9mrhAFCV/k6ZyiKObpn3x2/jFRkyZwuVKpCMKxkC2n+7
	 QRNGr+CBWNnkJNM9+xR0fUkCQGu/w51e+0Nqrncau9CuoGk/QVXxX1bWa1Mdnub3/0
	 nKOsxYsbOX1DlZYxKuUkKTi5ZQwMWVYyZaBECOpdN5Md9s47WYKy2npQHkIf0e1J5W
	 045Kz/ei/6Xmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F27BCF6BE2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775743357.25474.11914664697683620257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce642ec5c5dd7581e8010cf504a4113d7277855dc648b1152512e98280606b7f
Date: Wed, 07 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767757433
