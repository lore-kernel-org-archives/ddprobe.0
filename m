Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B4333F1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71603C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665012053;
	bh=QFxeGMqqaXnz5XYwKclrdecIECWZvSbk/oIeOp30gpM=;
	h=To:Subject:From:Date:From;
	b=f4iS50VDfIc8Dn/hxUx30r0iQLLrtyZgUxmTh33CQgXQR5IukHaBAou9elg1a/A6G
	 KGRgLqbw/YIvAKUjPsTc8XxcC7V7ENKrDjenv+1+oZFylXt4TqQAC1ILKwq16NYMZ1
	 C0ZhPrk1s9L5/ywHOOccJssBf69uzB7/RAOlw+cABjWxm2x9rsM9IEYghcVjJKg7T8
	 AS2AWLHt6SG6kt5ivJ+vZpCfsox6j8P/Lwau6qAvvEqODZB8KZreENoVCb7slnVMLu
	 Yu+BMnqST/jubGDlrGVrFc++MQMUYT5il9975FqQ+6oGqha++RCXa2l5hhOpM8o5Sh
	 LeDk9S3tLOiwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54ADEC433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166501205332.24795.7236866946383052543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887838060375ca54722a4a4db72cd4811890ebb42beb5f579395821c684e840a
Date: Wed, 05 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665012053
