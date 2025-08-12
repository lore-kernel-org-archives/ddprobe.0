Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA7E20B218
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754974794; cv=none; b=srw3jzCqks5VJC9w5Gp1QOTNidBcfTLsvIVt2tq9ucM2O3Ud1KW+8kiCQsEV0A+P1dXtUVjV7MVtL/iBAvBIEbzzkczz+LealM31h9hFRSVVGkY0TdUwjEyRfUk9Buh2F0cAo13c6/QEYycutYRrxiG22ScMIWEzctvd/LingJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754974794; c=relaxed/simple;
	bh=4MbKcQK9GSg6miuJ5GxikW3eprLPFp0CXnn7fr9iDoQ=;
	h=To:Subject:From:Message-Id:Date; b=lRfAZtnmO97URHlEGcOL1KhrC/wTv7DhbtcrLUcwGbS27Huxa95xxBaloH2sSAZ1tLWjyXf9rLBWSGP0/0j5/NGhw3t533ciULix/+qYPdYWeb0wrAqmJUvGP6KJ9tKEkRG7tFMu4iBSJGtq+zPvjGIF9aOCrSO4HmdB/c6CWfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyHPg2yX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyHPg2yX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DF7C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754974793;
	bh=4MbKcQK9GSg6miuJ5GxikW3eprLPFp0CXnn7fr9iDoQ=;
	h=To:Subject:From:Date:From;
	b=qyHPg2yXg9Llgz4K6lN8oTDIIsPmw2Bip4uOf0LH6DB/5YQHAutKxoHx352wbdKZx
	 HWpD9Cxx0+rwX5DUwRD9FMiMelJt7fQkxAO2mV2y3XpUku8LQ+D9kyw351w3JuNKy5
	 sZ6bEGP5XnAxYlrGA+1Bcpf+JgpBhjsQZL0oiMl7gNNsBVZUuMMI2GtzTVJOEVYSSk
	 iiK9CxHdVppIp75I7KehxcOIyL0TU1OqAoiAsmfrkEm9JQphOY7WhY5ZPErOuvYqly
	 UH5Z3GyY49JXbNsZUs3rxlcRsRo0Sg/PEIzww8Sy0/GlW43ZjtZqx825D3HON6T5ME
	 dzuywnnn1GP9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BACA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497479357.12164.5911604855990062276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c3e88d8d6a4b04fbe6d8452be401e4ac5903ad415cfd666dda31152ef1cd7b
Date: Tue, 12 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754974793
