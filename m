Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E843E6399
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781782594; cv=none; b=fTo8v4akerR2eitRnjD1OzC9bxgKf24gSpRnKoRLZ4sxqombFIcrwpsnva53EZHJZB/lMJCD+OariY2FESyRkZZqYS4ptikh7HcCZruYHxTq2mJtNPgnP4+h/Xj/2Tpv6KqkOLBYoMSaP9xnXsy2uSyTCCGhTYIkq5iwsTry9Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781782594; c=relaxed/simple;
	bh=O1cC2aEb6rGAbRKVGSb2vfpNqRyTzOFEm2D7txJJE08=;
	h=To:Subject:From:Message-Id:Date; b=SBJWGztXO5Tpq9kjAe12FICVPas1A1HZ6u1o5AXn8mYNsIKzooCLZag1eXmjfO78RL3WvGmYCMxwQ3DsrqwHPdvfnVyAH+nUU6/XnMEoqg7/v4CQzI1n9kgosno3V+1WvzhkbIQ4BsZsrUhYYMlaXZYqUw9tb2odDnS6ylXQKI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBAkG4vo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBAkG4vo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E44C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781782593;
	bh=O1cC2aEb6rGAbRKVGSb2vfpNqRyTzOFEm2D7txJJE08=;
	h=To:Subject:From:Date:From;
	b=OBAkG4vogzRqwXUVkAQTXzVWo7MXNmwf8mFCRGL2RQfTxLYfKu1YsxtO9d4fURT61
	 aP8bKlTqPHtR3/1gVv178BiCpHWrxy1aY8V5OnX2h1DtwlE++9GKghI643XW2wC+8i
	 qdwZKO9DqSJD4trigfUx+2kqU401/lWPiYBb/s5389nGh92a77uO19VIPgXJ2X8uxM
	 JuQceGU0PdODgAcOF1a6wm3q0+GmSaXBRH7ZOEsbDWLpxn0n+XrheY9yJyKt0Z/wCD
	 ygF7sfKPtubIfBSo0xrpoNzR6wgii5tzJMamUiNgFfWhCP4bsMebaxgZ4txzPvZFQG
	 GkAV8EooWKIBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25E2CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178259372.15459.5545614806722586893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa57bcad75946757020cd50128497c76b5affa39f622269cf8d49f0f4b649c65
Date: Thu, 18 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781782593
