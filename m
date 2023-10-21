Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B59ED291
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYDDQubt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 853BDC433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697912896;
	bh=m/FoyWsxEOh7xjvueAP/UgzoRmdGnO4lMjmlkswZ4Qs=;
	h=To:Subject:From:Date:From;
	b=HYDDQubtIXOMDS75KkY+kE7xrh8CZbrTDiwc/AaUlYRdujxPHX98+3rASxkJXNlMB
	 xI8YADq4tsdyZJ7amrGskD30T2B/jQIe48Dd/rr4S9nAYDVepVWNXhku9/iWWe76xy
	 ypNlq7Tk2r4qUd91p893LtPEJBg4tNrF5RZyMENGa1YWimzoMKzXnkUZum1BvBZ6z3
	 5Yuy3FMJ6EHxrxUEuSBxYjj1jhvIzgU/SnJormSSA17xPhQzHVH9YSO2J33+08Tg3k
	 g8frW6SZq487d6vfyDDjtXFJLPE6M3K1aRvT9ol7ZR9OtJzq9enTS1cGku8je+5t0n
	 luFcSCBL7vq3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AD9C004C0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169791289641.9135.715963216864017260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40708d57657928108f23738afea3e5d3edc2e8aed77f77e9d3c92ad1903283b3
Date: Sat, 21 Oct 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697912896
