Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5215A185B73
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742009934; cv=none; b=ryk7j6Hrchir6Kd3lFTf0FbnEEwqCY7WiiTltPZyFVRkrMOaIWQ6wHUU+qNBxnQpRQj8T2wsLqx1+A6zSuqk0TCP9vUEG6dLR8zZxI+rTlD8jCodW8TJrx1sCarf3/n+TAaMxENCYg0aSp8FDiVnnLART+DvRVHW4bgNv3tE+oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742009934; c=relaxed/simple;
	bh=3aXSy+KZdY7sQ/h2vH3K6fPVK3ei/gGvJhO2p+ma4MY=;
	h=To:Subject:From:Message-Id:Date; b=kFkWMXaRQIbcECw9EdoK6YhIJNYoUSBP51WybqXFV6klQD8U9qo/vZtHWpa1t3zUFFzq8B4EWw62klBWCAoHhiEtTuTveoLRUGKfwZVk2jl43gureLO/oLmK0FKpbQ2LyWy40nJKkeoxAOFFHKRiQXQ19snNl78+EA0Ag5OjopY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJT0p0R4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJT0p0R4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B3BC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742009933;
	bh=3aXSy+KZdY7sQ/h2vH3K6fPVK3ei/gGvJhO2p+ma4MY=;
	h=To:Subject:From:Date:From;
	b=TJT0p0R4xIdShPD4tzRw4cQKgnJoNpN5uUHpyw434Xm7DhFZZ9rG9wzg7/cABXVvL
	 9YTHvbVaRn9+L4ZoFcD5GSewOXz8/KqNmcIjN2PSGJBglbbxpYU/RXKJOqViXgZPoJ
	 VVfgdEwY6p1pCpMnuuMOt3EChFbPNGZERteQsvY2fHBFJMRL6kSPWu43UXk+9ddb39
	 2sMDWrzGg6hymTAn9zIwz/8DTusi4V7mfNASsg9yPt8r8IFAyObwcW66GvUxKmeIxJ
	 u7NWNFDrLDNw2s9ugCgi+z65xceUb8K5qp3qD3o1+ppcb5uowE1Vn/eZ1wvSJRie/U
	 AOxQ/5L9zX3hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D30C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174200993367.4347.17469296730690136555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b8066292e84dc3ada759a4d2c7b4ac48fc723fbffed7040839791cd28ba6ee
Date: Sat, 15 Mar 2025 03:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742009933
