Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD457262F
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766330634; cv=none; b=NcKAi6rr3U+CGkcIWt7ocI7zqNXoHGVKxsy/Bt2j08RAVYELgLnNncM9ss5zGRKdlrafAY647/YPqmGbtJ1bYVc3AQ789fRAmOL19ZYlsXumYk/lKZUvYL1SsL0jvu4TPc5vM5MjhxYTtYYv2PPdxBcMewDbPfnGrz/ZVHjr1jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766330634; c=relaxed/simple;
	bh=O/CZD5oYKid0GMmww5Xf+T4+l7D2FAXWFOnteFSwSJI=;
	h=To:Subject:From:Message-Id:Date; b=cYv03A3/+ZsW4y5NktG8lRT9FqwuVSiDcHit/XfdfxegrqG/sarzN+B/zZIoXB9i2zO73ZMjA/SRhxCdCRIaQJY8eHogbzG9yLA47AM5Enn8ObWAlqDO9Od/kfFkr2fwf04S7Z6aMx2zj4y/EvmDlu/xdkjv6PVxe0uGGT0+R4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZN62v9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZN62v9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4014C116C6
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766330633;
	bh=O/CZD5oYKid0GMmww5Xf+T4+l7D2FAXWFOnteFSwSJI=;
	h=To:Subject:From:Date:From;
	b=eZN62v9HnypgcWxuB1nidCpyG62OQzxFSoLMauy+x/J8d05Bp+uQ1GQEJpZR+XgKe
	 dEA/bbzMAYJ2TYwx00sqQ7xiSYPE9S0aymiPmbxRAScUdZiBd24W2fvNt/LWTAKDPT
	 aWYpdeF1h0Ql4ejPUUE6ZlTDBcbf77B2VbX+KEiO1QGKGi9D/5PyQ2tsQKOjy9ySPM
	 zbb4GKI/O+Y/dQS4wj7vC7r7dIzJ7qtheGG0TtS9LOiU7s1mMf3VUfb+DkZdZCu2hA
	 guOUiGqZ+XqBZz7HRY6ZJD9zpOVRqr+sp6bH2w0kTH4xpgezogwVRkqNWsBVQQsyvO
	 YOKIdlT5Ry5fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C68E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633063358.32224.6688117059895673898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ea71a455ba11c73f1e9de14986e9cceb71bfbc6d6021613616be5a847bdccc
Date: Sun, 21 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766330633
