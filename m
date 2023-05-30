Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB5E1993D
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 16:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE917C433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 16:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685465585;
	bh=e6fpJex8XO2OGkEWjMNnf6e+12kWglraFsNEslA+o1Y=;
	h=To:Subject:From:Date:From;
	b=rVf31IMHXf0acmtWxoVU8x0C/VN639KfIF2Tx0o7RH0m8ra2LNEdGyMgEiP9vam6X
	 qBEf3mIPZkgbkDLI17sdAuyJWkl4C9V81nkAC1D1/da85e7FWKz2hgz1Ht+dWla4Eb
	 SSjj7SoFywdWut7HVi8uPWfQX4tkYScHuIplSvDsfRWRcgPyZ0hwvA7J63+dC3Lq4r
	 1tvyLn4G4QpVqGZKOyONYd3BlSuBCCHuYlpRxmQhYk3n0IXPG7s9rNghjvfK68DeD9
	 b4AGIZJ7kr9bM1AT34wOQuMnRSTQD3Nohh4jAxXHRogucVzwUyCjEMiF6+qzomo/RM
	 /UIirPEIbIPqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9F2C77B73
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 16:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168546558575.18936.4559737564765004672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac8ec49b7cc771c1bca1f69bfebf516881e29526ed3180a48db3ab0ae5b1424
Date: Tue, 30 May 2023 16:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685465585
