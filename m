Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251EA158520
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747567795; cv=none; b=ECQOioGmadhpOoPYhMht3RUfkJjzLVTXE+T55G+qJILGKarzXdEVmkdaHZikOQUjcpJSJsNa3ama0j2OmCnmyaywnKGejN/n/lwPGtXH1V+M13Kl9Km+/S5Efvn3oDzeLRxWhUhR3WLLEnylRkQa2ymad1G9lUYuwmnhmesCxMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747567795; c=relaxed/simple;
	bh=XbxhkN+pJOahYoyUkwXfcxBpvPXTTva6ALV5wnbQJCU=;
	h=To:Subject:From:Message-Id:Date; b=YWagPd8eCLjwWWxXPaB+a0P1ByGVKbmY2zkxEy7J5h2KFxfGkS/kCnd4u2mS9rnCaccDLrFFdxE2jh3LhZjRFuqNZu0l7U9W3VT5i6VsrUz/mnOl27bDx5fXCW6qH9Wld4FCGf+aIBGjspf4ctnwSxyUHHOzbvDYjAmCJHDIffQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJZ9770Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJZ9770Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1234C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747567793;
	bh=XbxhkN+pJOahYoyUkwXfcxBpvPXTTva6ALV5wnbQJCU=;
	h=To:Subject:From:Date:From;
	b=KJZ9770Yfu3cvZUnI2cJCbNBqXRNgr+4KJUXgy36K3TxIFWILQsH/aAOaB3Ncf6H0
	 gBgRg070XTJyhEbqp144X0WojNgNzedz5qo7nlsKm6qrAtfoZxdQYXLYp4QVFjaBi2
	 UjCVHtPSdjMeOfd6dYJMJNcP1CXZ3jlBqmh2R8HH6jm4tZ6pbfdsgtIT3x1Flxk6oI
	 vvC/iA5UWQB5vwEsvcx+v7PHCij4Z7EQLDJcY+t2Wxlje7B7i9+A2zfHvfzStIxpZG
	 YZ0n9qVBjKW1gSfOHDAJeYKALpwT2GGm+JKeuTn3QMXzP4c8GOXQnbL9cJMAy84HGZ
	 hGWtaNHSOgRrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB7C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756779357.17864.10766937505789149760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fde6473fb2e5fc6900050afd8876332adad8326d470ddf59c3cf8d2b2d48ae
Date: Sun, 18 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747567793
