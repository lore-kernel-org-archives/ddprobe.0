Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF121842
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 855BCC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673082687;
	bh=oTQde3qMMxxPkXkpufsfvvNZ8nbuwP4xNzDRMSRJI+w=;
	h=To:Subject:From:Date:From;
	b=McsH6CigbOD4rt4UZ3KzUJ2YMormUf+qbkexoMjTZZjvt0rV9iPu1fmkttVGNhjfl
	 ThoYCNMJUjo2WQr77ikKFRKqLTsv603M01x+9mnJYsLgv88sxlBDY5phUvkZkRwooA
	 Lfzb1hugjDCGrLB7/1sV/7ORcXoDd5PRY03MYpb0mvlca2hLTEEqMhTzNOf92Hm596
	 2WXiyfRTWngq/p5gwNbwcS79T7T3hYRovhFJRPaN9VnGTjLnda/5E8VgDKgAcm0uAl
	 DUFKj+UwgMRFmRle65eatb6zGZ4v4ldX9DpoSJopKLK549cbvJFCAPh2nk6OqXhTPV
	 R4IGhNXz5FYeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66EDBC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167308268741.3090.1307430045454035513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a871115e97a62a57629638f4483eed61a518ac9ed3108c424000753248909d
Date: Sat, 07 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673082687
