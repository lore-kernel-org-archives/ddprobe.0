Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A58B1E492
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734198354; cv=none; b=RWMQM9NKNz6emO4ZtpeuG+O3yjC9ukom3ZrhZ2v0RxmVT75wq/pH7L+UcXA5uH6BgK37U2PpkljILWAQ3sy9MhbKwmcQE+RHcZj4pK7h+rFc5KgXmHoagtcLUQyJRNCeHWeynCHrc4cnnEqakHbmrfKpYFDBTJooalBz98acj6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734198354; c=relaxed/simple;
	bh=MtDHJhxwL5Ln8Lr3n8KOuq9ZfwUrdYzoF7b94TXtKhE=;
	h=To:Subject:From:Message-Id:Date; b=GdBluG6S3K2mNIgX1W4swzogC+emitBCk7tVeyXx64ZrA9t6Ax1T4Z81hfO3R8DLUmgzpzfyAaYdSPCXnklIiqPczWcpIhqzKo+M6sRh9Vd0xKTc2J6IGy6GyXq2aEm88PGCuSNL1PLCJgW6Srt10Y/escU7foDW6SZwbjciPlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqJHwz0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqJHwz0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3923C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734198353;
	bh=MtDHJhxwL5Ln8Lr3n8KOuq9ZfwUrdYzoF7b94TXtKhE=;
	h=To:Subject:From:Date:From;
	b=UqJHwz0KHZ+LCtof601DtbvfGi/UUiIqWzgwWpuozSaJxCVyGkeMlFtmYQg/vDq7J
	 EbTMvq/hCvp4xApDqifoRms70kR7HO0J0eajsCl8lJv/X6qZeHz4PWI7/cWdRiTuEj
	 uto6SApAewjamah2sQ8A1+uGbdeMl3bXrbOHZSVVQX21tWAAhkBty+S0I3+zFDtlnK
	 ma00R3/XFR/thRNaFV0h4xqxz3O/kdL6my67IeTynAwtzWh5JvzmG4ElBlVmm/W00W
	 FYcntmfyBB6qRp010H+J1U0nLR1KdUslmkNZwxH9SsK8zUZzKY7Kp5MylVHYVAZnH3
	 fx+RzRvRLcQyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F786E77180
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173419835358.21271.16222896802148568666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e735a9012461da5c438fd577414c1f1878334d615e26a751ace09adb6563c396
Date: Sat, 14 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734198353
