Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA4B3217
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDF3C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671461487;
	bh=dk8IUBsYCiyUm5IVzdZZzqXNfG3sonYo3l6IkYpWJX4=;
	h=To:Subject:From:Date:From;
	b=ss5D6mKXpOPFLJ2aJ9DjAewjXUCxvByc2V4NqCCjuA5QAoL2JcDR57vxjzyeFyirf
	 GoxFnTiMUiQF838ioSjqLQ5Ge/KNvHpOttx+iULOlSOApAKKPje5+h2f9sJZDX+LSY
	 0Js8dN0Pd1r58sUCAXdF5Mi0wlhPciCzJE8GybCIrhifZFz4Qc4YkDmEo32tgagyHo
	 zt1uJ9lFPoxfT+P6TcLFJdCEVVgsTOis0KS7DY1v9lcv1kYNItHOutRJtn9lX+xefU
	 NUZVTBMgITQ2v4HdkIa+kHdQzkB475ZkFiiIK5ZE0rvIwzf+Ca6GLhkN0PDsPq/WG1
	 LfQbTRPT/yWMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61ED2C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167146148739.32160.8118945733397562049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e632fecd3f58a1e8118210ef65eeccd624a495cad3d4f7a2a32bf51c80aa287a
Date: Mon, 19 Dec 2022 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671461487
