Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506A534388A
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779487354; cv=none; b=Kw8XXnJ77rQF1P+UHznZPRWvzOtDLuxTk032ZjBFeKzUPAH6sax1YMn+0q2QnIurQFYlNsiFQZ/q1VF2X3vHZGYOUzbT69fAnubwpLxtyN9qLE3BKv8qlLk5LM44OhupP1R+sdnnKFFdoPejaXkJyVLeZG1hUEXpvGKReCRTvr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779487354; c=relaxed/simple;
	bh=Fnnum9DX8i3kmAtk1PHzVmYo6aFiSj0OjTsmkGhOU8w=;
	h=To:Subject:From:Message-Id:Date; b=gBecbrkQU6+nncRNmtQSdR1VWU9ByCvG/XwfIoTctiR7I3sCSUKAhz9vz3eYvp5Gk1YcuOFtM6FdHePrud4AFdtK7OzuGqWU9r+WQTMz8ylx/CKObz8jhWbE2yT1vlHzNco73TZuxCnEBFwMkDSleBNhWGgmNopaD11TsB2+i7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Llvr1Smg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Llvr1Smg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33E7C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779487353;
	bh=Fnnum9DX8i3kmAtk1PHzVmYo6aFiSj0OjTsmkGhOU8w=;
	h=To:Subject:From:Date:From;
	b=Llvr1Smgs+xYPcUeFU7GqrqvCwJC3qcj3nB8K+lM8mC8oOEVg4G1WhfFGYc3S6xPt
	 M5aHp732nwKWdh7HC3r5wzfkGdzgipqlnyVvcrUvUg8SABmq7h8eELOEW3/H9yFF91
	 slnZYsD/H3zKnGK54gaGQudjh/dEiSw+D25gUlGP8fPBeE7DVLhJ6Z7/YLv1X6x+eK
	 uQaORH6qIl0bc+CazHhcy2oARMENpRJU4m/Iob5+TOdAdI/OlJCvr91mhqV4GBNgWI
	 lUKszjMlc5rjBnsevXilCG5y3mEXhdrqhbUUt8m5yKwrSNytXmvKQyaoYCGERtMv1G
	 tOURnr7EVg1qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E6ECD4F3D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948735371.7698.14620318672402698822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c4cefd40b21ab43365232ca923fc9348cb7911e169563d3168dcfe7e5395b0
Date: Fri, 22 May 2026 22:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779487353
