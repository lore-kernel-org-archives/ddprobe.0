Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8AC1DF75C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736190954; cv=none; b=qGpjQLh0zsAcFXqwQFEttq66HEV/kdfc95DVuof8AmvaZTrDSM8ghI9Fy0rBrRFzJMqr7dcGU8VOP9UFqfFSSMUUJVLhjdl2FxnRvUHfiR+KZ/kMVa6EQ5JoPnSvSqxvEUBkSIjUodLUBg+VzpTFJsjsOguluoyUfuxZa/pRgpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736190954; c=relaxed/simple;
	bh=rS197MOSW8Dorrj9bWdaul9ZlOmLHkEFozhS0VuI/RI=;
	h=To:Subject:From:Message-Id:Date; b=rR4zwnlb+rOesFJjezgd5wlHUOzcazIZQGRf9Aglk1vXiR3xlpvmGUYks2Fj1QxAuDkoFvxMF+slqubxiwQV8zxiwwuKbrOk/SMqGLaKxRXlyw0g1uSv5gTHeAYauCZYgdcT9IDbdpjb7GqU9pk4KD+y16r4e7qThSa0O/GSCao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5EB9cwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5EB9cwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32D5C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736190953;
	bh=rS197MOSW8Dorrj9bWdaul9ZlOmLHkEFozhS0VuI/RI=;
	h=To:Subject:From:Date:From;
	b=Q5EB9cwOxMDXh+FX/RBc8/5WiCBx/Rp0w5h5aAy0Iq9gFO6ytsKhlaDKWldr1LgTH
	 u41yPL0NBck8gORsVRs/2yGc0SFVAhMINdBzqTOxbiqpRc6sfnZTFYDokbLHsdt1VN
	 dll0llvrqU8SgLnZOBGocL6vS8OINANawjDAJHSIjnObh3kUHc8ix6bkVp08uYopF3
	 Oy59cL/QdtFlOQ7h2t6oZLWyZMlPXKVf31dEVzihCRTkCkZ96tNE9qVPPSDwqoG1Jv
	 5g17sCFupvBdrprvDCR9amukdHtUgbw1tXU2sQ6TRE/nQKD5I1yvyhA80etSWUHAVM
	 tNGJ81rGyOopg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9359FE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619095359.11219.17412211674052836622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e3fd8ad495610a5c2332ed559d5004211f593705a817848892052e3cc60e34
Date: Mon, 06 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736190953
