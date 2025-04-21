Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D12C1DF27D
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745261995; cv=none; b=c1Qn3yN8hgZTPzhv9h6WaA+zCJRo04LuiwJ32c5O0GPJvMuxh4pGeakOFm/FENHI7EW5/emABnlNurjNyGupvxXIZ7IWU0UNesqqj4HdQbbxy8IHABlURQNe8+hv8KV3lAptJ02FAfiEAJk2CteE91KlUzd0a2hJZyTke+2yI1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745261995; c=relaxed/simple;
	bh=ruJugdLDXq14sBdI41Io3Xt5R3Z7Jq9IYKmFWfG7O40=;
	h=To:Subject:From:Message-Id:Date; b=uJbAx3q1ntXC44ihSWxXIkIG4zPaqOVGZ+OqqRLKTQmcqiPVW03BXH89gJlFKWJAZRQwL/t0VPPffqSUmtEbcpbYIiQcaAi1aQW9rF1xmVPIKrIUMqHmVbfe+RF0pCONlXe2AzQVBH8YCR/tx5L2k6yyWOcjNmePNJLpj9GoDi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGpKDcqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGpKDcqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDD7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745261993;
	bh=ruJugdLDXq14sBdI41Io3Xt5R3Z7Jq9IYKmFWfG7O40=;
	h=To:Subject:From:Date:From;
	b=XGpKDcqsRY0FuSJyTvEW1TzAnwtaC0+2C2u0LgcPKSwmmvlrUcWxE1YB8GSgPgS2P
	 J+f4we1YYJtVsZFuFE+3LCfTwhRqcNvuWt1vb/bIt/CIGWHxJtsR1LyYeNELczmeR0
	 Jh0GrZkGyX7okiQOQ0A/y1OzEMMoLyqkTW33k1fZeEqplnjPmPuxYtQrgNr0VkSxhD
	 bmc2adXnUgqBOzadfJtrUecA+8x5e99ui4ardJcYf2lznNxf9qFCpcOp0192MYriFh
	 FrUplQ86wEMYGpH/CDw8D1zwN3p2Fe2+DkfBuEfXa1XVzAbbCci3A+eZ244omqPbqD
	 /WvfWqijq7DLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA6AC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526199372.21827.5194823485224791303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74329417f4aa2a7ee52c53c92049e245ddff84617ba84951c71a7c438779ee7b
Date: Mon, 21 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745261993
