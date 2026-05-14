Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CCA3C063B
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778738434; cv=none; b=XwzFBsiUUP3WxGuLVr9jQpDsrn8u8R326dppEp/qstIodDWs6pnr4g8hs+VN3U93FrLfr09SySKo43WWGIA+jLSKiRzSYzxYB6cj3k40Z/4lSaa8U4j8riBhx7e1XTH3z9j0z5xNDjRgN8QN6V2UdYByfi0ecrPoHtYapeaq/y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778738434; c=relaxed/simple;
	bh=O6dUEU6iyJTd/OYHtZWY4zcevMrxh89oh+/rHhoGpfg=;
	h=To:Subject:From:Message-Id:Date; b=G7ezCv1RVvkswijgzcY9e6m26kiBDt25Ai/PsiYJocNxPtJ3ZEWTch5BNMS71RoryxGZIRiHetnd7lmjzJliPDhHeLb2GTvtCv2MKd5a+oMVq7MNZW4Knx34QVpURoSc4meGk0oU88qX9NUQ3KDZwrjIi4XnkAEOusYF23z18YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1u7IW2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1u7IW2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC718C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778738433;
	bh=O6dUEU6iyJTd/OYHtZWY4zcevMrxh89oh+/rHhoGpfg=;
	h=To:Subject:From:Date:From;
	b=E1u7IW2PodFg1PsWcVGTLq4jp8GxhOr8C6q3lBvoS4rDTPtI8+iLHQlU8g1EVNpG6
	 vuaVwVabz5dEgU8HBQLyDTwKxxVNR1Kj+Xx18JLJxkZyQWKXL46wpobPdbO+QWNphh
	 8Vuc46CBpQGYrRY/dIO47wEcfy5eBms2FFZIeQsz0qeB1meLmtu9qs+3SC/BuyfVqd
	 6YfwWMN3C4ag8OV0wcVC1L678ybVw3tjUjYhlYKe7HgYLQl+P9cNDI5hOeoMobE7+i
	 EZ6p+4cGNgd/Hcrkm2LIJ2yKEfyj9q7HnP5o+vIVTMEs11JQ8Iu8/PPtePRPcD0BWl
	 z6Ns6FKNt72aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCA8CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873843369.21190.7491974711102551433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fdae49d6c70bdc95891d1ddb043daf4d65141e61fe82c2150bcba183f783852
Date: Thu, 14 May 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778738433
