Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8145DEEB3
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 03:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743306594; cv=none; b=uvQj44v07TUbw9BM901QDMj4/+iFWuZ7KHsLHzNKveFBzeOhDwvJozlBgTPVd7Kc9nxFZu6KY5MD5BZ7h40R4EpGeouTz2lCHHhNDU2YGAXGg+gTM0SdMHmppXdj01W1Y9qrHUYO/aF7vPPtpJpo52BUaaYVS1jBI9JbjmC2gNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743306594; c=relaxed/simple;
	bh=ZPiLj9VZY/Zl/hHkZ6e3xyA9zJcu9r0GJSpfMvmEb04=;
	h=To:Subject:From:Message-Id:Date; b=YpKngR/sXn3Ck42SDihEZAFRX4sJVkzVrQGEsP7pztPIBhcznUbwgam6OjEZjABXx2lKDVHqzwWVetAiXahyD6iBGlnhfMzg/LBYNI9DsWGjz9Q+K18LaSspScPN5llmV1cL/ScMqlQUUOjSoEuUAJMMhkBpnJ8VSjalW8UhYWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0hb48MM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0hb48MM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE47BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743306593;
	bh=ZPiLj9VZY/Zl/hHkZ6e3xyA9zJcu9r0GJSpfMvmEb04=;
	h=To:Subject:From:Date:From;
	b=S0hb48MMs16YNqAxUaOv8GBx/Ui1Ru/GSpPiXmdg7Jc33JDG/z+yod+W88pohUCM9
	 19VLHZjBSJzgyg1UtBjuZ5RRvAAcx0C+2uZ2EqDQv0FnjpnaIuOVA3H4eOfVHmixVq
	 kr4jiqs2iBCV9mpHkULJ6VgJmgSWjGQ8YAwGjf6PrC+FdPD3uY0JTpAicQlUsO7zMg
	 zk7a1uufPZ4ZqwS13lMUSi2WDF04GztuEfQH2u4yk7qva35x8rU3WDbVddDzTRI1iP
	 tWrRyf2/QaoX7DfXLs/LpLayjJ2MBVBmcsoGCnfhbwXG3k3Fu9RkRMWrExq4GOAwTk
	 QsbEFGpK8URew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A0EC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174330659372.15697.18095757213840442788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792c5777242fe52a6ecf639417ac38b31323e0d4372d1cbd06469b6db91043e9
Date: Sun, 30 Mar 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743306593
