Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C303B52E7
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788015634; cv=none; b=CdZGiILGUlJuMawAhba84XVvDjD+37kZOLHViLWJvNgcmS4MxnKcqLdQ0/7pZM81XIZVADT5pqHjds5KuBdD5d9Jtrtek1DHASFzCVFSAKZN5CGl2DjL6LS0jf/BVrGEKfdezZv8+Nv2REQw7u9G/dGNSTswebtkG5uMuMor0sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788015634; c=relaxed/simple;
	bh=9Dx+W9lu4DFgtZ4lLIgNmVOVnI3i9GjiLa1h5FgT/BM=;
	h=To:Subject:From:Message-Id:Date; b=Ry7nnwo4SbeENsG95f1tsVrr0Ve+DtaXTOkZilXYxbGStEK+GWFuvYTDOb7X1flxqMiz+2Flh7GdSotStDpoXp8dcHjJldeDZu3oDfjwCNUxrAA7891/d3YlvfDW00sN9nmk8QvdzQHYFfSz0hlt9EW+MLIk4YRvBv6x5OWzY4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJ1zHdir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJ1zHdir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32CEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788015633;
	bh=9Dx+W9lu4DFgtZ4lLIgNmVOVnI3i9GjiLa1h5FgT/BM=;
	h=To:Subject:From:Date:From;
	b=AJ1zHdiruYzK5t1dZhyWVRVSCCpdtusf7UB04SyavWyu65euh2Ka2E1IxsgLEID2P
	 3BfLRmabQn1OA5/WVvBGwfNdjuEGa5u+WQkgtvzoBTzeN3lwNFQR5iD9OvhmcbMKPQ
	 /TnNmKIX+CNJDjglAYPjc8Eu4cPvhtWroKdvnCeL6a1naVWOzlLs03HMHqIPrIL0Sc
	 +W9nEjXu3XoMsmxoqlR+L4erwTk5Bv/nOOwBQ+j4hYQYVHqhScagc7UrbWwuKy0fPz
	 AGlMFAzKddM8DSWWZUpShQI5aRQFHaVkDA+e9uPJ3M/Jsgx09T0vMpgCE56pGbAj1Q
	 EcwLuMit3hXMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B75C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801563368.31236.3512930433046722263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a42c70a5651986f0ea2cc8e7d6df89b4844dd9611cb4ac7dfb62f6adcf9086a
Date: Sat, 29 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788015633
