Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC0D3D905D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772187894; cv=none; b=P/0b4T+n/T2299EzfhE+FVIcgtc2Vv2JX5mk8erMtD1m0BY+I7cNlThb8GQ0IAXw3Tv+jY8ArDNNXPnULJIXLX9GTPeFZTT59HfcXx4NIcJNOS60jHV/+tOd3MhqV7K1q3gbbNHWJw+OAvHDcPZfi3COsxRoOb+xcJ4RKxFzwgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772187894; c=relaxed/simple;
	bh=ivfxwSNVhF2Nqg9tp5TAEgMPM2EUsta/EiF+zyOUIiw=;
	h=To:Subject:From:Message-Id:Date; b=WJrBfyzYvabfWyw1UgK19/bcGMKpBDcABTwnGhSGNwwgoStSgL1XVBcRV+CBFmqUMJx5asTLCspUf4cGh1hZsHek5uA+/tiG3JwygQHhSAu2qHmlpM+nP+Kek/y+7B5fE5lDQSyYbDoJYXD4eAVMejTWUVJCyrT7gOdvEGzrvyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvWCussJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvWCussJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6DFC19425
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772187893;
	bh=ivfxwSNVhF2Nqg9tp5TAEgMPM2EUsta/EiF+zyOUIiw=;
	h=To:Subject:From:Date:From;
	b=BvWCussJcgU3xnbAeVtesppMcjE82QbP8UebpR4qbxjqe6VAxivp6o/ou+J1XoJBK
	 kkkPRDBs5chVKcJ9rR6QwoU1NRPWybCn6N1RFFXDk4PEyHuOuLdI2qJd6jvOMtnw7N
	 L/yLJaVnWPLx0tRJ8clOgULg/dVtXLfQMdEaB6uG3sKSEc29YTW6qUSnZou6SrlyTA
	 dInxi6/3FdGrL0yd+Iz6ElgbOT3GehE9ILIDxaXRLXZBcjRrWoAGiPIgHKhzKNqvPQ
	 Yu3nNTA9IK1bC0EnYmKe7OXqbpHsjpFN5vaSeXebpe+hgDRke0gtKaWp2IuvWUN8r4
	 rF/HSX/0avHAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE1BFD7F8E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218789358.29791.4524619844764803159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636e5538a1151cb58fd5dbcb7646b679f51618e09627d46f9e97226bd0b9eab7
Date: Fri, 27 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772187893
