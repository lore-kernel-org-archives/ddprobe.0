Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384724B1E7A
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746675594; cv=none; b=f3usxCfEsUWtC4YP6sk7TAl2RtfeWjtztNzNAMvXM3XgaCOxbC/ebFo8yORhQHsx5zbmR23bePESX1siHEhiu2yt+PJJoqN5ldvyC4GlirbLHBkLUHOPpK8h0DPv9bhtT/GJxDzgwieWRTu4+6y2J9i+DgLM8cDp+0MO4ghfyKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746675594; c=relaxed/simple;
	bh=S9vGD0CaIzOJEQpanM/Fo/0Q/Z17GqHmnRgp0KWsJhM=;
	h=To:Subject:From:Message-Id:Date; b=iSW/KG5LD9Oa7g4IxP8XNU4Mzw0d2xWqoMo8xDxhOPVA0LZ8dknUKR0LAQlG00Bc9LjfUnjT1Hy1/MLWoPd7oyCVxD5kVKkG8vZR/lnzloZqgqn48JYeXx2+7m7oKAcwJ7ZaqyOrdHZggrg2FRUe22E3xfa2p6bIDG4PHbQeKIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6WUn53I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6WUn53I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3779C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746675593;
	bh=S9vGD0CaIzOJEQpanM/Fo/0Q/Z17GqHmnRgp0KWsJhM=;
	h=To:Subject:From:Date:From;
	b=V6WUn53IlqWXG09Bji9NsfcQ1wqg5+ROttH+HtdrYvCr0MOM5S86meMxSlx31KXqk
	 DUWMu2wPhhhI7Lp+gyWaVM155IVE/JTSz0kP62jdbDITP4ZASxeuqHNXogCEQXl0Uk
	 3ba2FakBr8Nz3f7N9JKuwxoGzecvZc5gCFxGc3siO+oWKBLFeq5ulI/Lk3KQoH+y6V
	 UtNeHOHerHs55KrYnfTtuu+UANIPwNbpbpJxIV1zm31L+aGwcw6tkNSP9unAq6ZYc8
	 GJvegY5VsxCO/v2T9jisH6KaJAg5e6RZ17HHUw9ZtSSfMRl1lBLotL+NUHcqlzPw+I
	 RtKdr0bnVbLnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FDBC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667559357.16595.18202991906653442811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253bbc43721c1e16ad7aa1d1082edcaf7085fd36fe467efdab86cd2551578167
Date: Thu, 08 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746675593
