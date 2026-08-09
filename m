Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7402936167F
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786306834; cv=none; b=J2A/XTbmB6R2k2mPl4WCGSDGCtGSDRDHBZJwbhF83urNyhCserzwh44Kjilqd+/aoV64JIDYXm2B06gKqAXX/JLhdKXH3SOrFk5ST0QAcemQSVVfjT/xv45LcE6tgkOANbuGQLctp7joPP0pb+efuFXFbUNwYyialbY6Iy/NrWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786306834; c=relaxed/simple;
	bh=I+7SeiS20ihM+Fk/DL2Wd6KaOLZbcWswfbtjKUzqwJk=;
	h=To:Subject:From:Message-Id:Date; b=FbWCcAO03etVPv42v7zmxeVFLe1yv1JKW1G7wj788WoQi1L+LjWZKj6qgIXiZmdC2pqujbpE8VY2QWF357mRY3F8qLgDNTGdqo7Gv4p2XpvYlpGNLrMjE3RqzGYqPgWg8//HCvU6BrRn5f04z1clkXDpBf+0KmSKBCTYS55rrdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhT/0Fvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhT/0Fvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC85C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786306833;
	bh=I+7SeiS20ihM+Fk/DL2Wd6KaOLZbcWswfbtjKUzqwJk=;
	h=To:Subject:From:Date:From;
	b=OhT/0FvqDAC/Ix3jrELrK2eSQ68YlqPGhOmh2hOqwOtLKtdsjoav+nAcydEQ/uXW9
	 JNENsu5II8OyvwHwjc1I3k3v6PwV8f95iIXGqvvoYr1g7reuD6aGA7xnKCXjUDp6gW
	 49VRJKgAlHB1B1xUMOMJ9ino6Vvrf+y4hu7BbPWhXVJrVQdszqb6121FWJ/JHbXs/X
	 aaCsqXdkLOmr1Dr3PsmH8b3kWrPtDVxwGxS1D1FjCu69o20dBVqnaw4zsX/UsjlV19
	 7Ctxoybf64tp4IyKr/S+SIsS5eE6eHEo6Nd9U43vG9fQzPzgtP2tXpxHa9NU68s1TA
	 FO40WuKRMO81g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4621C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630683371.21314.15623496165558817875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e620d700316327995f77a8c8aa660be9987c43e547177a696845c8bf27b48c
Date: Sun, 09 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786306833
