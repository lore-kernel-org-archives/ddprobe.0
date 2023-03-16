Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B08C17CF
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 06:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFAFC433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 06:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678948805;
	bh=MHTFk8K/Gpr0awJgJWgndLsQg5nzH4TgKeWjCVMN5r4=;
	h=To:Subject:From:Date:From;
	b=R/udHPjapjrQF/GxTkjgERE8Vg6oPtEwdy9n6ead4FpukwqAo52iMxsfGCeHznbvz
	 Nt1jrqdB7C64ScllCPrLs6onQWEXKo/Nc3PBqiKRESlvSIaLqcTRIib/dk1pGXDffe
	 MihpijlV7DB0Y3qpJZwAVg0VcM9U668/zd90PgYCgwrYGPnJhxbFPPZYnOjchyTZHp
	 PQWAlhmVfFNISdRHjgsFyeE73jZH9qUv2xIkRbRv6SBgt6qGt58axiZvb65XknN0SQ
	 LWvENyUkvQNsf6ecgXJ3a0jlctYvyNFlTiENuKdqOVvcwSWx3iItpjy0QXd/X7+gPC
	 MpvZuuq5i9BCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD7FC6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 06:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167894880576.2283.13120758013758814388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd58dd440cf75480bb7ac285153ede06f56d4f3741dd0816d0f1e6bc86ba2ea5
Date: Thu, 16 Mar 2023 06:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678948805
