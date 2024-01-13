Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B268E544
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFCy4s49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 906E7C433C7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705120096;
	bh=P7Q+IxiSfho+C2tFhYpjCCqI0ekK7U1J6iaW1GEFCZ8=;
	h=To:Subject:From:Date:From;
	b=vFCy4s499tbXPDNT1H7eXsgRUdn+OioId+T158UD3/z9twII58BK94kDh5tU6t3Dt
	 qj4ivgFdjai6m4wztMs/Om3EVbIaSxFv3FzqgPNPYHYtnLXbKjBjrlBEzpqP6fyUCy
	 SHhhsnKRNdyqW98XxxmtZ2awmpRSkwrVGoJf9ErRpqYBoKns+qdhmRSXfg/JtzulnG
	 FDJ3IwlsYjtOuwAAXkKagXv72FhOcerOdzRl0le1Nn/4XQKBudynOv+KYesLIZ/3pL
	 gLtSWjyczQ3V8LutIS8I5n82NcxxJCDNNxlpzxs/s8BmdBUjIkS8DYQxUrrY1erj31
	 rUXD9/G83cuAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CF61C4707B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170512009641.10075.6334947428312804029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f7dcf46e6f83454686bd72e003859495543756bcff30ff9ad1d404a25009db
Date: Sat, 13 Jan 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705120096
