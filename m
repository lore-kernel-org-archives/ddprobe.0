Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059251272D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707497297; cv=none; b=upm1mSNmJWei1aBpW1fOX08rJQ+GXC0tw8DEA9H+zSdNwBJflONaDRXUYUWTPp6izzWlbke/Cx9OqWXLKwqSQ7Y1hBwi4rbdSCslrDPY1hsWYhQqKKMoej7DnwxgEWqrmRbmC1aRu2Ah89WHgbDRaMcaXKkbJ0xI/+x+Jd+ZNyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707497297; c=relaxed/simple;
	bh=QW8Cm4h1Pe2jgcWVp+TZr8AIEgaGFwbRdvzSAXOGIAA=;
	h=To:Subject:From:Message-Id:Date; b=cQ7WCfGASXlgyP+Up29Rx6WewhwvW4OeaEIZOyYQCoFSsx1a3xRLG5IXHZCSkb4RH/pyzA/Dk6eBuch4+xC1QYGQMFiCS3Ke6klwoFI/U1RK/gBQmJHAxciHGS6W7CHoa506galS8Jd1FdUMoybNewCveURfHIB1gf2Np0TpA+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsTEvUfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsTEvUfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE4CC433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707497296;
	bh=QW8Cm4h1Pe2jgcWVp+TZr8AIEgaGFwbRdvzSAXOGIAA=;
	h=To:Subject:From:Date:From;
	b=KsTEvUfQNO5Ynbl2ghHZWMyVrYjoxksQkKlTwDlmvbcgAxeOWRrVWpH72HF+RYHbn
	 6TyNZp5smCsPBJ5ho24V0GPCBpz5pNqkMvcnhCHOFZoC+Cvav8MdYHM4sUeabNBN7l
	 HrXxZ7l1RzSzmQSEiN8Q/utz3hyIbliZrpP3BdXycyCvLekFGb15GPZlqYqPSfsx0M
	 t/2u9W0gYjsL5LMsX/nzu0T+ODg/UF0M7p6kLYpABe3oNC4YlthNv77dCtBkDp3ESZ
	 4BZ4XQ5kX9DQ22IBvIp5ZExTOPl4ZOt632g6ml5NwkZQwoPY2Ihe2hOvxuL45OiEaJ
	 4Kk19pb7HfDWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E7CC48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170749729641.25344.3307347670280203589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1c53bbe155819ec36055ad37fae7c240877a42e94b3153635254aad256c652
Date: Fri, 09 Feb 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707497296
