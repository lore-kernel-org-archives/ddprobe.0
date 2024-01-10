Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEBA4C3BD
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dr6Mf6nY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 870AEC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704902296;
	bh=rPt7jVVFuOAclN/hktZUrqLswk96sN5BG/w72sVDACg=;
	h=To:Subject:From:Date:From;
	b=dr6Mf6nYa1A5IukNsqXUYI5+PNSRs82jEaILzvHi0YLAOpr0qT5/6Z6jrs1rQa2PU
	 L7NP7Ti3WAJFZ8Pw9SDpCG6xnION3R2KRmBI4cVqT6O15G0q2PpxxyzHtfQ/fIsM2Q
	 mRd3QU8juLU143cQ50AWRUEQNLJXZsZoXQL3OG6aZ4nMORmG44Bn/KYPRjhvKSojuE
	 JmazLKCpjMTRebDc+wQuo6LQxASTTnihGcjKI8673ijVdMYBmS9/vC4B5tPtOAAw9j
	 2y077Jao8ts4H5ZTfqPQCZDYUUx2ega0rj8AhFsSDS5i019lRyzJP8G7BFjcNR7XwZ
	 P39nXdJ0cCX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 696C8C4707C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170490229641.22979.14704864761989046158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5cc6cb158c9c97e09512b20012ec406f1d3330b623838b0c86f28794abe9af
Date: Wed, 10 Jan 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704902296
