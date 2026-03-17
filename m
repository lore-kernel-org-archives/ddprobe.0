Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D5A35972
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773708294; cv=none; b=EYW9cQRGMxZ5Z9tfGdRZ/veO+CpEh9wONs9etMHWMBdylo4QCv8b7f9szEJokaX0PA/8Fb37BN8/gIYTt2+B7gGYAvOMs7n3lkuUOfOpM+4TPOXsd7/hnow6TxcpqAhSArbEs/9lyQLtVRcZTn/AeQAY8FEJCOgTFzJhoNpWjvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773708294; c=relaxed/simple;
	bh=Tn8M5dz6m5qyW4ewQLP0wn92jY/hBONz3e9tWRQn2jc=;
	h=To:Subject:From:Message-Id:Date; b=uLH06nUe6/9eqnUKLb9z6jyzgcO1ofagJhBBWe3cri8HMoMxlt1vWk8r9Uu+wyazKOOASl4YDcxQKpQnUXNi9XNWJh9SVWffm0fADVyJBcINwFAZLOiyoBvm6S6UHwmb//APvRsoUWJW7cawrsQcdXUNneDz3bE3KD4S8Pv39sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9HCkZqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9HCkZqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DA2C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773708293;
	bh=Tn8M5dz6m5qyW4ewQLP0wn92jY/hBONz3e9tWRQn2jc=;
	h=To:Subject:From:Date:From;
	b=Q9HCkZqRoFA0QS3+54TlJQN5YvdzjwXnQ/R2VOLzHAI5k2GaHdzIJ5F2UUZLEFpPL
	 KY9SxU56fiX8zEA+vkl9GAW68e2YtNjnOekZrOciXl1OkL7yhuR+BX5hmeZHRJIoxU
	 Q3sfk1dnDeJrrEBCDuEk0kfuci9oQAY/aqOcTQ6NFRWyCi7K+ghS7qo7fpWqaWtURu
	 OFUSp0rZuUISCSRW9BOymqs5C+suGcqUTerX4z8EqkT4ehnyLQOnsUgcsyYubT56R4
	 3gOALCSqQE4Gvb9wkxElm91spglvT2jTU/j3mo6TWlmcpKuv5ypuG2y2G5cR/iV3Xg
	 gXapXEibBhGyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FA1FB5E98
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370829357.17488.8096223292182091740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64412654caf2d9d9e402416120643c8fa6acbb05c203ba818c16082a90b52628
Date: Tue, 17 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773708293
