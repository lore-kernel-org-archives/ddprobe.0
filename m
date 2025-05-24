Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A6C18E362
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748080794; cv=none; b=QDUiC3gBz0CUPNz0il0KilBX5OtxkKT00y1MEbjiaCkfSPhcG6n+S5s8lKuNVt5JEO7obyyiGaOItBNIlIABUcnU9q3nTn8morOegRU0YL0oPck3cXPVRClG5HNs2ZZ4cyxLjx+xhpYHCsTkh0WQEItizDVfqydDrJDyfoh52zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748080794; c=relaxed/simple;
	bh=TJMCksWKHVCOAvPzwnhE5yfGjx35qCBi/+GSqCGuWZs=;
	h=To:Subject:From:Message-Id:Date; b=YcFjWxcttMuezk2j8a5tgLyDCF3gyt3MxSxravQkWTUyhV67m3/8rQMK1AGV9ns1qWi2ktJtH/fdrfXtWsRTtK/3r/4dQ8/LXrD0bMxOXmvhEJEuYs03H22qGOhW2pehnp2T39/TSjLdFOMB3fJPYo9JHAvrulEwFpLjgylJmFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqwSvoZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqwSvoZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ADBC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748080793;
	bh=TJMCksWKHVCOAvPzwnhE5yfGjx35qCBi/+GSqCGuWZs=;
	h=To:Subject:From:Date:From;
	b=VqwSvoZpvzQYwjQH1L+JPZKpUui7kWNtW9UKptqkU/vZk3tofR40GPVxZnZwFER+a
	 8JrGVRgLwx9oJNeO4oZpM7UDvBiDJ0LWmxzXEjCdoOHZDGxEdzzDV5RZ8dX60citIQ
	 zA7CgQGniLDk1a234Wh8dk53zp3WO4DFHMgRw9zk61lOAa5X7Y8PYTBULW4koAyz7t
	 pGdAmbSzJUg3D9y0zvrHEPiBatyiqcf9PD8LhCnPJBpvx1W6dH10KmmdIO+8PQGdEK
	 NgfJzpyb26oIjyYX/4u6gxoW50ck9amFB3D8fPpA+C+NfTJaEE21kpeAHA/bEG+K3V
	 japrEIWrOFMTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB8C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808079357.6731.4616117385034107209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9a809b4108145d7d4ccb4f10058163f7a8071cba69e5e6eee5497e96f992c9
Date: Sat, 24 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748080793
