Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A38515C9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720540583; cv=none; b=S1wRUqFInk0Jk1AqtdM2VTLLMnfgWnHFUCiucfcNhSOykf+bQasBDMMbR7Nqg6fkg3/ggwiTVkexL4qrbS8hy4KnUgSVoR8uIIDhIqM6vXrbiH9GWlykIuVlOzipw08HaQj7K+lTTrUfrsVPKNRHg5VQkK1DkwtxlKJIXCosenk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720540583; c=relaxed/simple;
	bh=/nJqWGE87R2JnBOLmPYpf0ZNrv7Me2qT7W0OGrWchy8=;
	h=To:Subject:From:Message-Id:Date; b=nUCnha4TBEUKGCaeDly9EEttqu3iMXqCQX7laDJW1DTnRiP6xl/ItyeZYqpJEMYjCtofGoDIwLaIP0Akc0UC9pSaAmx2RU0Bn3VUYAN4va0dVs5qpMi8iQWG5dcvWb1+S+Z08K7tB8KlNBwPEi8v4x5Ljw9g48cn9esVumtRBCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrkVLAG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrkVLAG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC95FC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720540583;
	bh=/nJqWGE87R2JnBOLmPYpf0ZNrv7Me2qT7W0OGrWchy8=;
	h=To:Subject:From:Date:From;
	b=FrkVLAG8L64GtqpfAltqgaR3MdqM++m1pkYceqB26u98Uwta8bFQQrqIBUnfA27B7
	 yqZ2JTMIW2o/0UnfIMmI+MEjYJ5llkKaJmV3nEI4H0mPVXlcZzcsTXOQ8Vd6lvlRoV
	 2f2jfxcAiK6Q9YA1vpl0ajN7IXzBeElqcsB0ANEP9QbpR/iYUYb81wrbX8JjdB79Gl
	 kqvl+Flt9uNVjGMeT3kiw94UoMt8qKts7aNtRPtZqYtf/TgGVKXyYdUi/9XWLH9FGr
	 oLHf0aT0A5EagBkejNPFWI7YeAse23mpwl9YhlywwtAB9vF3+jUxr81kscw8UMmFeW
	 B2bk3M3lVYhZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D573FC3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054058286.29063.4841299105472952010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5675bd6f73b45fbd99971749df961f8458c089073401f5ab5cf5346fa95ec35
Date: Tue, 09 Jul 2024 15:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720540582
