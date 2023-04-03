Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F224631
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 05:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBD4C433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 05:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680500765;
	bh=greFZYVqaobHDFH96UD+19sKa1EQQEfaS25kjXb09TE=;
	h=To:Subject:From:Date:From;
	b=lOsczGXXdiPAWQcBZebVpLSnxJ25v6ZClajnApoVsgYotKAOM4gdk3ta7jOUM4GOK
	 IZgngwEUEgOXrSgBCDjMtBrBY3KO1aaXHYdCgImPxwowTwf1KziNE2zqnD+rjTnphm
	 Zq/pBV2dQwq9T3wnwOmOdzW8e4vcFnxmeBqDj6Y6xM73U9FcwATf+ZensnxtjwJWxh
	 KzCQKW9fYBx6JLbF3eIIYbv7GIjyWJkrUOw1LN2JCY5/nfJnDZ7SqEe4ABw5q25j2J
	 5fkAZ/gw3SLLb1SIlH3vZUDe25MM5aY54mP+F43sV4x0ITDx+oNP6Txixi5XYn0iqa
	 dOaCzjLroYNHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3996C761A6
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 05:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168050076579.14614.4877898450165756096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ded90aa3d06ecbb125b63d1116f9fe9321cf88caeac8a4f7394e74b8f33ee50
Date: Mon, 03 Apr 2023 05:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680500765
