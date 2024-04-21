Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF2B1843
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713670223; cv=none; b=KcdIfbwHhMAuJ1DCb+Qk406WNajFBi87G/KWjOrw1xPiYGdIJ1b2EjwqK/3FA2ux8wmIms5BJVM4wPE82PxeOK60aGSwXmrH8RGcC4QOknkA/A8ZAvdDesgzfM1rl2R/62cliIIb7b9vCe/jnmk9C4xE5XajBhckHLbHaH2nTG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713670223; c=relaxed/simple;
	bh=H3uSOneia0UzjoxIxlDkDj4rZ+gdg9najvwrUwPknKo=;
	h=To:Subject:From:Message-Id:Date; b=rcSxrzlL0ccaBbo1ptTWzfZDmMc8WxNIW7vTYcyve9Rdt8q+rxDSDb3v4qf37D53GlNwAYS6XnnvBHjq95l0mSvWzQ447YlR+fRJnKzW3dIiI4zn1U30HRbfqFajxwYKGvhRweqRNITusEdPEnbdJ7tBBye78NRWgMHDk4ljD0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0bx3wjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0bx3wjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA37C113CC
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713670222;
	bh=H3uSOneia0UzjoxIxlDkDj4rZ+gdg9najvwrUwPknKo=;
	h=To:Subject:From:Date:From;
	b=W0bx3wjE6rrF62QRseYK6aSyckUcAPSU2GQ1Gz4bUm1+5xUHM7VH0XCPLn3oRTpUC
	 GRUNYAwwAMzoeWmGehjXsYnSLz9ufOdM6/FkUzZrpKR/uT1WyBA8aGnkiGlIimBH2t
	 DjyALCeMs+2iCY/PiJtJKS8A/6n/w5aAAfC98aK9m7JPCyLTnZbRrt2lKL9H3xPLU/
	 EH4Sxg/exY2BKiYwhxSkru3eCzOD0Vh9Ntbh9y2M/hB1PCLogRpthug+ONecdeixh2
	 l1VDe4IPYJ9jfL6XlnYPG10azf2x1yH9Y7LmKm3q3HVzwCGM4iUO+8yrIuMcLZmv0n
	 Bn/OBN95UuQbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5792C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171367022276.32669.8294831101755645250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df168d3caca86df1abee00daee664727dc8c8516cabfc4b00c58be95f35de5ad
Date: Sun, 21 Apr 2024 03:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713670222
