Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588D513CFBC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 10:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718620703; cv=none; b=FiDB/z2F5UmjoGWxH4cDTx/pi/36oObmQfpMJ26waz51EWN34iC8Z2mFKACqffoCoajSt6H4UjNG0sGXcpfiibFB0s+jO1GVFyyrrwrW3iBnr+D9LAKikFjlP9G33Dd5+nuR1gknA2eEEp8Jqib+0LU9q0sOZ3gnHEjTEmlebZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718620703; c=relaxed/simple;
	bh=NQVrYBZqHZXEuhNfnEvepy971yXDN+Sge+Ew9OcTEuw=;
	h=To:Subject:From:Message-Id:Date; b=cWu894LdJ6Rq2uBF/iJsGhRlHZL9+2mFV1o/K7tN2jFJJfjDvb7B8uAv12ZC6yc4gexatLcOeOY+Y+rrcjU+HsTFudVQ1bQbvlJ0ln3crE4aeAn4bQatejQv9NvqKb2t4F1+7y5GaxtN+TrkBcaG+c2QL9byMb+H6tTIJ+2H70c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTrXLwEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTrXLwEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0D6C4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 10:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718620702;
	bh=NQVrYBZqHZXEuhNfnEvepy971yXDN+Sge+Ew9OcTEuw=;
	h=To:Subject:From:Date:From;
	b=ZTrXLwEqlkYjaFYX587pZLsDOiE5Z8EVBEfxLQkgHLp6EGE7wK1S9XAeDFTGmg6rB
	 MsHxfD6aLLVL+f63h5UhQ1Z3ZBsVyK/gtfykDZnQ6PCEjBshI06Ou9vJvVM+BaSiBX
	 9Do1eYmBDtToL7eJ8MH7fQQMxHLghjFCHtSHTwPgNYfNQSWcvXA+Cnz9kSsTCW6ytP
	 hkNXQzkqOyGJm8IUItTllOLZwNdzuSsv8YyDiSHEb9KpRTb3Fw7Bn7h/RIcEaGEhHj
	 cu+OmgKPv2xznK8NUhuKLf6XMhiQ/IZ7KzqPwjPV2PZv3wBSju5uUQJbWL1alQVQ8T
	 Zi2bcUOVTWVrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8527C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 10:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171862070281.19398.14127769085722922936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54a39a5775e088658d9bee1b463d3da266d1fa93be579627548aac15db06c29
Date: Mon, 17 Jun 2024 10:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718620702
