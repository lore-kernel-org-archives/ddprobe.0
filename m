Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D82848A8B9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786727434; cv=none; b=E8PZV7r4hq4M4xH4yrvqD2eMiWK/1vvYSsjMoS72JVjf4v+vWi/eXhgAUYr40hwOx2wX6b+UDIQIgTLIHrb5jB1xoiWLKB0R5ozSCdKVS7jWN9Vd6m21T55RTkKVjp9PKtSQPKva94dtQVaOO9ogbMfywFf4MoSzBcQZ6cj6+48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786727434; c=relaxed/simple;
	bh=NDvEL02/gZBLE7fn2R2XpICJYg7e8z9f3++DQULmq1A=;
	h=To:Subject:From:Message-Id:Date; b=i95C1RDvSb41BNVf/5bvr0OEPQxvullbpR7xEu/TOQNXftFC/1t4chYGEEBwSx4vGa7IP85B2k42ZYlGd1F1syc194h3hbdJgnU5xwsIFSwaSYls8Icr/OhP/mKu21KeLA6Sow+ksjgwBqKsqWGZSJIAGrRvLfyZf0FxXJFG7F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUTo9vhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUTo9vhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC85FC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786727433;
	bh=NDvEL02/gZBLE7fn2R2XpICJYg7e8z9f3++DQULmq1A=;
	h=To:Subject:From:Date:From;
	b=OUTo9vhRjolHlmgUsydoomJlK3cgv/k+Yyi1oBt19b8ajg3U4UsmlKpk/NCorxra1
	 eQ/voDaDDNxlz1akwj6xSgcxDOJcpujWdMk53UF4s/vbMr9ceMNnfse8M9bD8Mqpe8
	 S0sq21d1dGmVN76fskQ87wSLaG6T/mwoIOsLKkPyssb03Oc2/9TCnAqNVFG7t9KClZ
	 EnD7mnU6slOl50xUEu+VMI9X0Bad2EVcLguJaOB2WMg1nsoqO0lWLAoUUNOtGCVI4K
	 ISltjooO1Nq1SriZN6QHaVQpgGrTbzkg5/1rBXOc7b7e/dtmQh2nitNEFmjR5TzPlC
	 Ht/UQIpwJwY3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E8CC5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672743368.28421.15493685354163937999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f538659c23e84ac12bd213046bb061b810ebeafcf902893e44ab8b7026f5df6c
Date: Fri, 14 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786727433
