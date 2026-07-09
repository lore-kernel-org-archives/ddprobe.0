Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5592AE78
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783620514; cv=none; b=e3l1GeDw6gyLmK36ZhkwJfHPfXOsWnFJAyS23LQvj+wnzAAsvL5LKGsYD0SpIE/urVzchoE1c2MENM+KNGH9p3uyXcctR49pgq/rMpS1j03l03fXBJSM6j1JvU31R8nbBhs5cKBsdmEbsD9euBoAFeqKkz7OGHCzCOLzrZsHXBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783620514; c=relaxed/simple;
	bh=WCFodYF7OG74gyXFfdkr6TCPk3nAoSSSPtJvp9fWJQ4=;
	h=To:Subject:From:Message-Id:Date; b=GSonIJI+17lHQNBKqV/uxN+fG8PJI8CmMDp9HwogLyR25cSmyRZW3eHM5gNGAWQx+pbecbcO1v98eXaa/Q5MHLgZ85WsYcvXSPbxlSPsWUTIvmLN89mpS79f3f90dM1u+74MAXFqh2RGItklY2qfDDgFD7bs7bzRuKMADYgb5gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3NbZPGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3NbZPGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5273C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783620513;
	bh=WCFodYF7OG74gyXFfdkr6TCPk3nAoSSSPtJvp9fWJQ4=;
	h=To:Subject:From:Date:From;
	b=o3NbZPGV5hC3wU0zMwZR33ZsoKYsxqWaVw6Qa4zVOoZ1IPXTQXZmIMXOc56FK7WYK
	 S5NH+Abx5WsCoAXIBthwv8DjkLAwyrFk8AJZ/Yc5R2cNNPm0pxsmilFNtZf3qxjW8b
	 iu04Feg8Z3uXXSRjqlliQugrRSMeA+SRot+F3iPfzIJRpvfLWk/BcRjqwpFl8drylA
	 CHe5v/DUC+DODhkyWtHCGU4OZRRHMt0yfFmcFmlNNDARRWCgIZM980Bk3L+rQZCONJ
	 pAfTWV7IKxwR5fPCN4UI4Rsph2dlb+kJxGTVg+vFRgo6G1z40LVZTVl4CWQwSuxcLI
	 B4tByQag5Dmwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9580C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362051368.15255.16238560836686535170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07f0ec42dad43f12325d19c277c3cfdbb01c3aa450f666d78cdfcb69d558075
Date: Thu, 09 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783620513
