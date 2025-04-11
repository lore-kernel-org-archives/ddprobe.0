Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9E420DD6B
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744388394; cv=none; b=d9HU0gEMDbExRy8Dz7FuxXNaj7cVWEqEoDI7nBk8H0vjhIlQD9/307zeAGSzQsIaoB9B7tMMv6YRdNuBhlHCjaQof4EOC9Sfimp6I5hpfVKieO5wdsO0SlydoyYmQAlNHv+PutHO8QcYWVE/J+h1FkIS3qUDf0A6BNHV3JgMlx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744388394; c=relaxed/simple;
	bh=XtFk/xnNmvyttoopS0yYt9Qil+vnmqIKuyuQn2MVPLk=;
	h=To:Subject:From:Message-Id:Date; b=hWRa7DfRYDxDZf1TNwkI8bQjiguc0HKoBbGjuLrKiWt5wi3E3BhLxbpSkme5OHbOgxBm5I0qeKsNflYYMyNI49PDotKqFNwzdJ5wCBWNXt9dNuoWs5mHvAQW6oBuMVV6HlZ4aQJXOozxLM0mYYxWdkkFuPyclpc6frM5EBHy+/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zz/JgGuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zz/JgGuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B194CC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744388393;
	bh=XtFk/xnNmvyttoopS0yYt9Qil+vnmqIKuyuQn2MVPLk=;
	h=To:Subject:From:Date:From;
	b=Zz/JgGuwzWukJyTKSLpfO9v9hUrz/v2B8+tksFZfb766YnPxZAac4JWNtlNQdGfdT
	 YBdx2HLO0qaR16snrDvNqjH8FGdtL5nKryEeFFIk+ZEhc5voBOjle/pwQ7qEKfEfqD
	 9p3+YKL8s+a0KIsrhv85smOglzQpa5o9wD0M1KseAtbUCUNyq7NyDMn3KGL61GsnqB
	 eaWbfwMoYBBXuk6/dXW2GwNUipsjIujuYNf+SH64a8gSDKOKDlspzwGDG64N3Fo91n
	 hVnZkeJxvCBNF+bTgU7IBOIbpmhnt3uJv9s1bVtuaRKNjAhBDSDppz8Deufjc6kkCt
	 XxNiY2fNYbLaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B28C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438839359.18106.2347535441096914493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cb971f1fa6192a17225fc9f543cc1a09afa0a0af66db15ffa2f7fa8edbc68e
Date: Fri, 11 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744388393
