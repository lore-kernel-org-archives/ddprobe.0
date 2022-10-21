Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A7217D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF01C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666336253;
	bh=rpX8dDXnnmInnznxmWY5KycHULcQBh94wO8cJGEbtnI=;
	h=To:Subject:From:Date:From;
	b=Eu7x5n0WhNk2gH5U7sx6BAFmFfJaeqvZqG74N30VnvJN6JD0PfqzlMq1+ebubkVK5
	 oK+dqPP28rX5UzUlppsJrb0j5HwQ3D/rZjVQEWYTBF2WAviGow9Rr8yUuLLT+khbu9
	 Et32x8ah+DnrgO6bmpMnueU9Fk0s+ZUFnaIsJiYJD7p+FH0rtVbMvxKRO9pIbHyxLR
	 azxP2+5uR9H74GQKsr45hB8jod8j9HlSWywoeTpEOiIIxzuoY99wd8NNAS3gBQ+GAt
	 QOUavnwObOLhwpMVQt0bKNqPYly2xdCW1dVf8HvXwZYTp+Zjf7PxaXdMexckm21OeZ
	 p3QH04KJQnXiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53714C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633625333.18539.6969911604123655715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b917e0b8794643b9bdc37644399f7d9417f4de220826a2e3e52bb325a465a65c
Date: Fri, 21 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666336253
