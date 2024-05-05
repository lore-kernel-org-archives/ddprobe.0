Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBD8A35
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714884743; cv=none; b=P1BJjBJuKOkK87xxRKEjZjnJkxEqxe0PTPN4q9T+JgvuLRZU9gcQLdmL1NmVhdCscO8h23+kEIr+7w9vDY5vKmjDKqC/dcUlf14ZSFVHqXbp7jbc+Ut0qgn+s0qBhL2a5toNkYuYu9QORCjbn3Djas9qvrYzoccN0Nfx2/7Yol8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714884743; c=relaxed/simple;
	bh=kAUa5ybKhQp1O8gVJ8cUnypZ/Lw5NVUQYJM1t0sKZQg=;
	h=To:Subject:From:Message-Id:Date; b=rBUNiAFLFilCTbzROVxIWghaMv6ex/zhWzl4Q33XBkc6NibBncmfK6rOfs2JPSryVSv2hV+ZHsk94jBgvJi4I68MncIm9gdbdxR2uFIVJiDI5GdVD6VOKruapf8UL3i1rysW4puo3odTtovkRchJsav3zlQ3TdGshHfYgD10VMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aL/HKhw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aL/HKhw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9893C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714884742;
	bh=kAUa5ybKhQp1O8gVJ8cUnypZ/Lw5NVUQYJM1t0sKZQg=;
	h=To:Subject:From:Date:From;
	b=aL/HKhw+gvRiIp8g+PnYW/j1HXXV8pXbCjzvMN4DGM+ysfdKE8Nb0Pd48SL5LlsIa
	 hdV7qMuj0esQyQ+GIWr9/emRzfN0QyNsHpbXgTYh3o2TrBIABnyvrWyA7K2pi7zMVA
	 pcb8JN4z5ILl48PUdimlyfcP2Pk5oBtctSy5TJKXfmzd0LBUeojwuTEw/IUC2xLnHS
	 shAWWs3nWqiNFmYp5aeHI1J8JGtyBoFzFTyJqMsL6uJe1Fc1B1UUNENPS8eg58wlHv
	 fWg8MD3RjToy2h5oxYxowdFTTYxmcNhjLGIFvjITLDKo+hzwuzxSQkcKrcLNLJwFpH
	 9syugWQnMljCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B17C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171488474275.27036.10768115662094127593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05822fea63e2b705002c122912c775b23e87c8aa4e01b8334f8148c802ac46e
Date: Sun, 05 May 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714884742
