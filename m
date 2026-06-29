Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330913128D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782774514; cv=none; b=FmNB5sp53qjvHmCSHbSa1nTacA/jCPsFOCS5ZIv5GHx4xaYXs8vGgIoCRDhpUsGqUIEGs+RtJQUWANy9Bpawp//y1MLW2llzHsX5o1wt4NYM4Ny8fC1muTi1B7PkjY74+ciYh5wgHHNgsCyt7zY2hlEzC1HnZdgvKhoJ+2syQ6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782774514; c=relaxed/simple;
	bh=hf4gr8fNX/jc1Vf8A3f68gKq7HBfjPyXMSgfsDm8fmQ=;
	h=To:Subject:From:Message-Id:Date; b=FyoDS1BUG9+VYENNlV54mjyidj1ywsvwT49VtHFhkOiI1nUcNhwWdRIz7GYnLfoe7o5HKuQpFWzdrfsrEUVj2m2/DgIy8q9elG0ddh77STWgrVIi7UJ19EXRJjWjvKSBy0Lx6Lq5MNyFSbxHlN5Bd6Y1Wklx11Mov+4TTLtaR/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jc6fXNuZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jc6fXNuZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1AAC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782774513;
	bh=hf4gr8fNX/jc1Vf8A3f68gKq7HBfjPyXMSgfsDm8fmQ=;
	h=To:Subject:From:Date:From;
	b=Jc6fXNuZdYZPHnsDXCF/HHpLDviS+RZs1JaDe+tUFxg6NydQ4QvvLK7WNMJg4Pml+
	 biNJVbmCTZhdCW8yUs4Wl0sDlA3Ry0O84nQuFwfSXkrMedE0KUgA5Uc262rc9Q6f0Y
	 1WaRLHvyjc0hCV9V20E/9HQyneG+CkUOMqUVx5SwAnQa49riCnIYXmGwrfeid0PSYe
	 DPk3pzgqV/2lwemICVeMvGLZjvIb3Tvpm5XoGYk43V1vQBEAMvWRGmXz1g0CekCMZv
	 3G8eFulGiIzlZvydSD8K1BbYeWkiPHQ9OEiGLAQ9td36mRQ2FL4jwlCKoNiQH0BCUj
	 d2ke1+63ucUNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F41C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277451368.12564.8145286260679875190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc00c63ae3397b402f41acddd99de78ab93fe07b8b4dbc255115d42679f37f27
Date: Mon, 29 Jun 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782774513
