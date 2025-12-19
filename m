Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103F0249EB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766140434; cv=none; b=Oc2iFdOOEpILM1kXxpawICI2qC85whyGHdMkw+/z05HIKKd4OiIPwSAligxp9YAorNnnHWutQr08F7iwcy83T975tU/darkbb36avkRyLdpgkKyL+zGx2Um4kw5tSzldusyqAJrX/aXo+mutvjKLDNVHgTd/jMAHyvKKrir4BY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766140434; c=relaxed/simple;
	bh=AEPcl160O1/ICkEQJAumBpMeGtNhh1hM2kJSx2Ji/q0=;
	h=To:Subject:From:Message-Id:Date; b=Nu0997b4EbHf0YPFx/GTVXV75rF5e/Jnw43eE6oZ0xOD6OJVw5sbpIz+FBkAr5ScGKHgouYGz6/MzUtVrRMBhmvtJJy0hp3VNeBAoaekD3uj83JkNxuiwxTZHHIoNMh+STG7TQiISvhgPdqrTYdwTFx/Xi8Bl5o2aFOLOA8BPF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qm+iDCzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qm+iDCzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD00C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766140433;
	bh=AEPcl160O1/ICkEQJAumBpMeGtNhh1hM2kJSx2Ji/q0=;
	h=To:Subject:From:Date:From;
	b=Qm+iDCzYlxHdXPo/fqWudSRSN+uatBPhbVAFqL60gxXcHVWbxfPjHZKDhLFEPUPtO
	 Q9RWqSvsTeL1oCUq4ACnyjvjg4u3tKV3uBeXLLSit+lIfdKxLC+WvAScm+6DewEd6R
	 e3uvqVh5n/X9Xnl244PMo70gGpqWuEW3J0ny/Kw0yhp2S3cyzvRQqj0i26d7brqJPX
	 Zva06i1Evxx56ZHKlHpRWA9DxB6HhoKu0rJ9GX1z4vG8q7QBjOzL6eMXAUF53Rb2+V
	 PPQNhw8wtfi4XWbDI/cpdT88YaV45yK+bwIlZAOgTktYfQ19+BTKMS3KtZ2DCT/y3V
	 DD8XMbIPu3tTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90769D767C9
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614043358.28957.6813663665439863445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a81060015a79e5633dde2957ef63a66c9a4dbfa17b518c537a66be0d7cc4d3
Date: Fri, 19 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766140433
