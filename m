Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44794BE65
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724010354; cv=none; b=QQrNfj7sNGH8HnA0z1klGRY5H0NjnNNy7/9I6Kfay9fFxd8COAU72Sio2ZUuWDpdyOANJENhQaCiGLdSjAsYwmrlRFcNIt0QeuAOxRQZ2u15al19w+Fq9D607FWNJ4fD/vUNeyEcV474Ulvh3QOZPEaplhrwDC2B3D0dEF63R3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724010354; c=relaxed/simple;
	bh=bAtDuKVL4RMNw7eOxb6SRmj1p2HS9DJrf2DT5YeNjoE=;
	h=To:Subject:From:Message-Id:Date; b=eGamj+Hq9A+fWh56H4m/ls6kkLdIUKaP7X2h3Ij3PniYyhowFmikxTla3x0dqx6As0234X/7Oe1Han7h/gXrExk6/HZkKffHzCh5dLGdZDQx/9t91wrcRF44D1w7uIQf7npPQf9QYt8mNrytHSfASEs7YGLBpjAL/EV4scH1VS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJQhNGwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJQhNGwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FA7C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724010353;
	bh=bAtDuKVL4RMNw7eOxb6SRmj1p2HS9DJrf2DT5YeNjoE=;
	h=To:Subject:From:Date:From;
	b=EJQhNGwgscYdW/tx7eAkuKGRKU0PfF2wvxHB/gFhqnY9tHBLHqp4DMHU1KOhX/SU/
	 7ugANJMYylvvwGQMLrnlSBOdZalLUCh9GUH5ki5Cfrt9LD47n8LfhXjOolBRNyPt+W
	 0VoqX4iwmkBwJgsVYv7K1ytUxq30EkW9MPgt9+MP13r6bfJjJmFI3NWQn0n65cxTy0
	 n9o3NA7Fntg2QE3b0pa1gUZvGQ9jg8u++ikanPcW3w9mw5tBpxh9xZn2zEipEnyOsY
	 CctRIMRzbLu83M98u9WG2yJ5t4309tHSApO8YWHy9UVN0WmpjNT/0ZdPUawaJNDKim
	 uL9jXFw0Sf2YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2C1C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172401035360.11057.15973722342771631891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76419fd3660ba44b5f1b30a83b7258f6da7f846fcf2394f32e019d49dfaaffe
Date: Sun, 18 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724010353
