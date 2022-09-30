Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1C810F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A8E5C433D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664577053;
	bh=MPtefnDrazxzy/MrT7wEZOPdr8+cyH7dMyJ0ZEg6/hE=;
	h=To:Subject:From:Date:From;
	b=Ip6zR0tNb7lqPQzDwhyTpdCKG850r9aOQhe6iCKWgIkeY9elvAd+QXs47MmQqvjp6
	 kO+tWu4utgZD5u+Ob/SmkfZ7jiu+T6+ZA9jMMkvXA3WTQW+n11PETXOCwlJ/q3dvhJ
	 fUYzSNyVJu3gEAgqwYAJXEg815MplUpFH84JgJUzKQ16PZW2dq3GhaE9Dqe5BRVCEu
	 MKTO55SxfZyUXTq2REPLhP+tZx+1sSUH869v/cjr1Vz/KChFlqWkZrmJDQwqgCDdNI
	 PA/q7zOYfLbbH7ufPcJp9cV37GGd4Bso3+F2LInJwlQO0NB4SJ1ppVNWhhuJ9hKXvF
	 asK3vceHXTrTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59F9AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166457705333.16686.7837273646112319275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b3fbe0c0d591aa789322cc8c4e4e832fa7fadc85cb766af9c816f781ca6a12c
Date: Fri, 30 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664577053
