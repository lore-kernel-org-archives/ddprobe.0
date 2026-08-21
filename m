Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B51F242D9B
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787331035; cv=none; b=OCJWFuyQE5bGAqZXib2Fu7oZ6XgZQKLstjl+UfdBYHl+iu/NyNoXmbXrniZrDUcr5kDwba2gG+0BWYMzseclAAcrSMUn4v6n+fySmRFtytg2+nXvaXcpA8CrzydEah1XICQvqTgBJlHHk+utZiPR9KXELywUgwC4BjVcexj0ofs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787331035; c=relaxed/simple;
	bh=RvKDUP4KV9ZYkLvkX/rYBaEr7F5mKtDZJfla1tuv0fw=;
	h=To:Subject:From:Message-Id:Date; b=NDKYpOvn5HNVr3yYe1oYxs6DESaUttTOcRN3f40B4Rl5bd3H4YUuSTXXTisL/QjbdR7CgGaZnudnGmWyJSQRgMEKMdCujP5NYQBi1OjdwoFalYBSJ9Y2uryU4BJgGglSEwfHB+IC9zQ3H7xJZBm1qLTBdft6TjkolzWkb5pf/Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/P03qj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/P03qj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA15C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787331033;
	bh=RvKDUP4KV9ZYkLvkX/rYBaEr7F5mKtDZJfla1tuv0fw=;
	h=To:Subject:From:Date:From;
	b=X/P03qj+2NE0RGX1Ep58u/O/NV0jVemH6LJ2Mwc+13OhKPcla0vtQbTUWDpZfvtwY
	 OYhSlpQ7/csGTFYr9xUycuNy5YCqI6q/uK3tzAxet/itHpmP2zIMyHaHm2U6yAKJED
	 bvTnMwxhPA93todprMK2FIgqH1iInP1u4c7RSpIm8quWRu1vJl6VgmqbAgfN5m4NyR
	 PjFBzgzpLGEPJbwu8oaHuOrwQdUw95DnC/MWTBGJYfE2BWtw2qtxT0uHXEJxOgY7zH
	 alpceinV1ch4W58ImSbHzZbRKax/5rfhXmq7wsuyxZnGNFMjgxLbmfeaOavnUsZGu+
	 UcAf+V7iI2IqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78B6C5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733103373.1653.14587674679253052749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fe8ec3743b410a5229135b02f52ba793dee2a9572ade5836334ab1e099d218
Date: Fri, 21 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787331033
