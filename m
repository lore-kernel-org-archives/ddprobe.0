Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB2A15E8B
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774678494; cv=none; b=F7JskP653Id+ZeDNSQ2Az26tsPa5aJK+3JF7UFEXKSOrPXBNrVqoHTbyM/8jVYNiYtOglrA/c87gKUPLNS8SBa/3qMF2I+gc44arJemuAfsLPyEegShC1/R4rTQP04Ci8Vb6C494ihoA4FV2gBoaeQiSypSrZNDHj5w+gvsXXRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774678494; c=relaxed/simple;
	bh=l7Vpv7fsxw3lEjrrC8KLi3xwyr3i5lXxkh/ZGaJCK8I=;
	h=To:Subject:From:Message-Id:Date; b=QgQRq13hkFexfOmiLOtQdGpO0Hb2zc6DMZYCrgmssXpPpsjM+gTDXOwohnQ4CqRyH2B+taWb3d5Fxpe3aSU2uAplneI3fiS85lsHNnLKNcQFmgmTeXmTz5fT7CsrO+lgp7y2HrO/Y8fqIFL2yP1ItF3esbaqKQVufPJlsKwgN7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHMaaAzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHMaaAzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76D3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774678493;
	bh=l7Vpv7fsxw3lEjrrC8KLi3xwyr3i5lXxkh/ZGaJCK8I=;
	h=To:Subject:From:Date:From;
	b=ZHMaaAzwBpv1l0wm4owYmZMFr1Mqrdes8gwHa7E9LwGyRv5h5JaaosODfYvi2j7I6
	 ldL/KCC5EDy4BXYoBFRvuHTf9owzV12SF18zKjPA2BJUZEj02rMBf073VzOOmSJLYE
	 ziP7jG9hof7x+TuQSdqs1HOkHLXhwGxH9RCtNuUhQtoGorfVtW74nigPCfWz7MxjhQ
	 aEDBS/Hk7wsoLnmac0c04ok0CVuSCSEX6nSaqJxZDIewP3WnNqmrFrfkfYfo1xvIr9
	 RddSOB/9M9p1K1EUJWqrvnlOygm4g3c74n30S/IjQ+KXy9SbBaXXNYQlOBLhkmQzoA
	 n2UYh+H25yG4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175810BA423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467849358.19396.7330284641675685297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d9aafa599a234e723a039dbac8f9f2a552db31fcb2208baf93aa9b2cb714c9
Date: Sat, 28 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774678493
