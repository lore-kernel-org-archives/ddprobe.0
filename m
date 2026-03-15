Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE61219301
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773611694; cv=none; b=n02N10pdMUydKhRy2MGmnZ3k7SAWqNHdu/Y4Gzw9ac596p/YG7ZWrb7rbUeZCU2ROvTm8xMc+AyOARteksU4kXyh9bZtNNL3fDAeEayOSXjYHyV9DyzXkFJgXR3KgryPON55tbTJVSQkxj1KY/ceweUtqoqgaDhQBI+kk9D+s8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773611694; c=relaxed/simple;
	bh=rROj3z+WzpJ3V5LjBU3Kcyfm7AsaG+Ohn1U5chsa0Fc=;
	h=To:Subject:From:Message-Id:Date; b=madhPy78V8oB3pnjGPG3xzt7wSxdj7+JEJnVIwbUCOZM0yWdaW3TnEDtTWvhskF5e9TYRZ3Ez1vxWoxm0dsTEjky9TvuoHUznJRqtR98tkboeLWgMxEfS/4ytOyjaRMT83BpOAONn9wIgfDfxOftYntPp7GCutYSrNMO04Cozh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYwAsPqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYwAsPqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86ECC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773611693;
	bh=rROj3z+WzpJ3V5LjBU3Kcyfm7AsaG+Ohn1U5chsa0Fc=;
	h=To:Subject:From:Date:From;
	b=KYwAsPqsISGKB+BUxAtYUPP3oyu697bRA5lQnE3IFKu/eRnbTv+ESoczNvLqkl5gy
	 Ha4DhWUR6Jw36tY1E+y9/x46p9d559Kd9TN7Fqd1D8Ft0EKx7WK5/SHh7e7TSNSPQn
	 xdw1hPuI0Fh3zM8uc/kDjOsSceZ5tbnG0YsFKZXogWhsa3r/NK1cQvt10UdJg64dBz
	 GktpylpJkLuHBQ9RLO+k0vK+8cfuTx2Yzrwb7wEaP/RjlFQICQelxgSJOcW0Aq8fhy
	 vjnjVvt2p8rVmNSFHCamK3ta4OoS1N8QWwOQdUWL9iG6RVuFKf4s1/4ZCKa3a98W2A
	 Arl9Dw3N4jSpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94402F3027F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361169358.9197.2921235071327407047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13489d4b75369534f237db9ca38ae326fcb4c1f4834caee5ed8cf22f769ff224
Date: Sun, 15 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773611693
