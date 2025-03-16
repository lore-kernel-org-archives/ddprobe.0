Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4886F191F84
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742113194; cv=none; b=oY/FJmeT+DRFLclVKBH+H1uS280/dWIsgQVi/VMbTjCkAlvXs26CZ61lF22lTwqIEYl/eL15icSTLQAPRnFUPQ/3hS8Zg4cxXIfbIgT/ueUTC929R+iH7g3X4ZpuY92nAn9MiXT5lsuGh1qW6+v3MusHstzXz8jNvNPR8/cViqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742113194; c=relaxed/simple;
	bh=CSHFWrVBMmfZa59jRGrukP2bLmJlj+bFT+Tq9JgSzEo=;
	h=To:Subject:From:Message-Id:Date; b=eLx13FluaRVZRbF0ozRM7eNQl4It9PBh5Hq17ImbNskidHE/0kh46QOWvZkJRX/a91G5HF/3Bv+uJIf2mu7I/svLggENBx7vnMDQYxmtZGQEWXjZt0IdPTY4RWTBoklLA3lMtCVoITeBknlIWiujp02nEerZQYDwTo7mq0pfT28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gvf8qcPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gvf8qcPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9005C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742113193;
	bh=CSHFWrVBMmfZa59jRGrukP2bLmJlj+bFT+Tq9JgSzEo=;
	h=To:Subject:From:Date:From;
	b=Gvf8qcPhde7MlGNr5uC+5vdBtocPJhnjnQl06LOsfCG60aRQF1Tuo76YjbwZXkNgf
	 BwATPIIpIPun4R2jBy3G/46haShxJRCoXdCY9BvvxBVEYtuYyqsIg7BTqcTaqg1BHI
	 Gx91xnwbEzKjqBsNgFmD0fLfJMrz/yll3wCPr3y1UNh7ym2Qg/VHRty5FhayKlbTm7
	 w0MkXw0hfGhKL9BErfNRU2694XvdUZR6AKQ9txPQdtnKKcZOoq8qL2tDPtAB8baR90
	 +EEDqL1LZFce78MYFxqwZl0s6+GX11BmZMCj9+kJM+UmkU1t3ZRxUF1TNJCiGo5oAR
	 Lzouy49UkLEbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4106C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174211319363.14685.7403316390827550189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1169aa3f2eb617ebc978cd2189fc858052e9d7b8cfccfd142be30a782cee58
Date: Sun, 16 Mar 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742113193
