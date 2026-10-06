Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DC2547053
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791255034; cv=none; b=UwzzOspZD4ZWDwvRsQqI8myDlDgmfoe7z6T9dajbPVOsmHzQ4eVTwc0QQHYtLX1NP7lcQqv+/cpuU5cFLg/gRZTNYbBcKcIPDvy0f3avSwI19m1WJFiUx3UMNre/GjV0KaEPmbmk4yfGnml5sw6JQDmhlhpIn4Z5aU/NLFTsvO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791255034; c=relaxed/simple;
	bh=ofjqCYvbH0TCK7GiCJiBPTBHDwYapwDvrhNjOlv6vng=;
	h=To:Subject:From:Message-Id:Date; b=egc1nJQIvfB5gx6UVvaT2qhpX3rMNGleLlNyWPrkod69JIs5mkXNA4kbkenZVnR4E9D6VgnTaqkN6d1fTAElLrnpWBgjkR8uOOQPilJcqoIDkvJ036Me/Y1FcPGE2Bw1A1jvA+cpe+7/nnlocgwfBbwg4WVxMeyHWuKUz+3wbTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8MQ8+Zt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8MQ8+Zt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BCDC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791255033;
	bh=ofjqCYvbH0TCK7GiCJiBPTBHDwYapwDvrhNjOlv6vng=;
	h=To:Subject:From:Date:From;
	b=O8MQ8+ZtF2xzUKbrhyW1zfNcEiudah80kFiD/LwuoUHVSlPNHEPnlIHDP45j14ctY
	 2w8sMttDS3EgQ88YHADU+YqFIVjAMZGeXIyjI8DLi499PQk9Y1PPlAajT9cqsT2FIO
	 xXjYjTiAn7wmaGitgrkvwZxToloiTR2L5RQ6Q4ghwdulBdH53fgoBiHfrALJ1xPfgk
	 0XBtonwRbfLizMj8iL81S9dtJ4k3bqk0Nh3xZeCaRDV6Rz+gHKEFylTsKbrM5fMIbU
	 UB/pQB8/hCoJDJT17fKt7LE66YkaY/RUpYTOCKhyl0izicPzKlmYw2Z3ymOW8rJHeI
	 IHhKFXxgfG9Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE151CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125503369.31706.12915228405195972232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd87348a46df15d00c5596173cb9f426387189519d06c8c79d9133c9526cc6dc
Date: Tue, 06 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791255033
