Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7BB14F112
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760585394; cv=none; b=S5EOxMwVJTnVz8nGjyS9SPivulpixtr0a3Lgc6TJq6aSjiyCAWXksJ0MHphCLxJAZYCvr8Ea0tXnwA3T2U6evGZwIdLg/hAtT6SnQ4099DZqAgaK5h4KXjMafAZSZqIn/Cw2tr5lFluiCHwgdWqFbjTXxz9DP/Cq/vaANA7vxU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760585394; c=relaxed/simple;
	bh=wiusJmSaNMj27kqye3UQaoOl54YnoaQkxlLyJoStsG0=;
	h=To:Subject:From:Message-Id:Date; b=KEkoUGPzoqgXb7OwyNcKHsLDrJjjzefY4d6BtZN4sm9r/oFrTBJXRE1jTQvpJ03Sm59k8aiHfNmKmrs1WHtCvBHsxjrsiSxMO/CVlDjfPgqEh+3gP2Y4BRxCzLeZ+Q1QJ2VGC8ist7ItIDIAy92+XWDNXHB2ZNF2tUyHm8JNyjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1i7rISw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1i7rISw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3997C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760585393;
	bh=wiusJmSaNMj27kqye3UQaoOl54YnoaQkxlLyJoStsG0=;
	h=To:Subject:From:Date:From;
	b=M1i7rISwW3G2nLy8W6KRAMJgqTsSxGKGl6yLoJmXTlTm6sg8vSYOFskEXgpl1nGAR
	 HDrZunwRWj4xQrZcVILxKFeI4FyIqDXCeHr8Bv48CoBq4HvgoMT2+I8Lar443tzyqQ
	 tIAtWu5oeb2DhDjty++vDhaFvzBTd+Qj1+WVF2X6SWBG3DOjpvBUv+Sn8yzWZ8ZjAe
	 9gVLIu1X/rMuyXopWpvlTLyyXClDzNhArtjtBqB5hplTlAVNr3LkCssMhg19HnNUC/
	 71lkP3LjfN8cTJGwJUWXyoQPluVfZO4h62BX37y+vYJ9lrJOM10SMaJUmGyYvluAhZ
	 g9n6PfhYnDAlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910EBCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058539358.13213.10637228960358558994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ea8b33afe613f62834130c955db2887697af14ceb4831371e76d86de712125
Date: Thu, 16 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760585393
