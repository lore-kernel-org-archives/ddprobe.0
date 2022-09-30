Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F6B5A88
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB91C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664567453;
	bh=6+ep8B7Sxgkg9niVrdzJ9MOOlJgZi6yKF1fcVKYinqM=;
	h=To:Subject:From:Date:From;
	b=M/2dv41wq57b4ZesGed+KVapo0ZZL55nZIktMwcfIXeRY3OohDCcVjpr3qh03kItH
	 DOBJd471HcMWNn4TFR1OSce0LBEeMXn6ECps4eaEJI0X+mUNoq/BOTGwlB0CuB8D+f
	 0QXzyW9AOFQXRyai+F+TAdRuDR+Hs4WV17m9IrVlCUJ8zP8nO8IUl18slO92saR/kz
	 OGjqjXJfGYjAg5sR5WJQplq35/vykp8uywto1RfdgkGfDZWPMgKbC0zdWvRq7CA5Cx
	 NoovKOkTp6JLRgUbD+pLX6jrfzl5Z08LVaVvPgrMaRqqN89Qc2T2rzcSfj2IAwRqEa
	 DTdULWvw922Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B95C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166456745333.27153.3853249070779839489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a51570a77f4c37fc8d484684230e08140f449c5fda7c67bad54ef6d2148a171
Date: Fri, 30 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664567453
