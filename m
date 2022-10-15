Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D6E372
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5C9C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665818453;
	bh=kQUjKvi3PnmkHccgoJm1++DzdvOyDpA3i5rmb08m2PE=;
	h=To:Subject:From:Date:From;
	b=tkS8j6KNYK2xACNa/J5TU43RlSXPORVWFOezfNYd5RDEilwkAB/v+SqGqmvQ3K5E4
	 FCRxFnmjIou5+d/mKYEU2Y3TnsoduPPk7dSudvMLEpoZ9ibv8wmAsi2eaKT++WtvC8
	 4g5FRmQqQ54jOGhwgezJpFtFobd3oapxtVPvY8zjaKI7DPqP/KPpMa/IuIOaDTqmB3
	 fwAXCBSczZws3hhise7c59Ckgi8JVNFmq+BEmKbPxKpNUG5EUvavgygjHnU2uIFGXd
	 xwXMUDlp7UsrnbA2NLbeUZuqVJhRf8o6qwiJDLMNW7Pqt5OyIcjwk5MW7YHlStWHMm
	 P0nOlsn7hF8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534F3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166581845333.6323.15954872383606935981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ccae9848ff10c7b6e39d3a51785d9f182058ab9436b8bf43e85a4d691fa729
Date: Sat, 15 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665818453
