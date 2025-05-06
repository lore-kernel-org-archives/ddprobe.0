Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358D5153BD9
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746551994; cv=none; b=U2dc3BZz5GAqWrLd9swH+MzMCh2tZ9tFp3zyb+wDffDagEDgFIZoMoxhzdC32gp3+KiR6S3jviqZo9UHMLnNliRMQIjzTO+VTMlJzEhEha2U0psiQ10JoSRayz3FJbR/aSzPPEDrJ6uSsdKXQ699hoDiZ4EzKhkBndelocETuuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746551994; c=relaxed/simple;
	bh=eVjRfUttvB7tFuwfRi+9241OHLR4S8oRdsw0HPgpwCw=;
	h=To:Subject:From:Message-Id:Date; b=l9qu5KOkb340xDJwCZI/Q6zovgFXyomwSWleCCTUXVqFppkjmXQgyL851DHfJCJKHglRO7tIwoqbXZbdAzvbb3VqT8q51oPJfRZvsfljd+E5smXCzHSZL9gSGsTHmxmKcBnJOs+4bj8BXWxXRGL6B3cjxm9BLXUV2ioIlz4czyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fj8lsL0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fj8lsL0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2AFC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746551993;
	bh=eVjRfUttvB7tFuwfRi+9241OHLR4S8oRdsw0HPgpwCw=;
	h=To:Subject:From:Date:From;
	b=fj8lsL0nTJhpCXGHyTRlNC1nR9Xu61iztqrlr8JzBe9W80NJJINy1gJXf/QE1OFHD
	 Tp2v/pR7HcxD9JCjODOJ+buztG3RDHL+4OffGFS+o9RaRhRhLoZBtds4BFfViDuaES
	 I1dWzzCwUOTSs7RA0A34x+QRtrA+XhKgBz0E4sMhOR4V+aIMfFp2iXLXW5cTZWnWef
	 AN6IR24QrhFMPsT3Yf1ZjPs4ksRkVMIRX1IXg72x5XqvjVNvYg6XALDKyEeM96RB5m
	 0wG5dw5OvwnHKdKjXInRee4u1AYUIe+NZo/f+GvrMln5PhXo/1KyFUgpCYMPNJxrkX
	 RcZUckE+he8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E384C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655199357.25679.5553456002373110575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a42e4f9927e586bd80fecc2468ed76d238f7fcde8a2f90a96f8ece821b5fc5
Date: Tue, 06 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746551993
