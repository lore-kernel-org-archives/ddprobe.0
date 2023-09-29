Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C78156CA
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 10:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB31BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 10:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695984368;
	bh=Aq7VEnEXzroGgJzIa/PBoqbTqoyPAehVFc7TzYyhsxs=;
	h=To:Subject:From:Date:From;
	b=D2fQNNY4REqtiX46qKRk/7cb/ftngrMVtDwjb6u8YVELtktTPUdNtVkyorrYDxS5z
	 MX0d/umCuuYtM0REJg2orbr2fAV1U/JF1VKKwdSUP7HGDAr/A7X6jUfLNkvNcheD+E
	 nf+hq7U3tFeNjcqeDyPVcZzwvb2xipyyLhWJdtwJ3RJu2bTD89ODYiYjfQBvUBxtFw
	 RzYwPly99WHEN9undT6Zslf/LgkH3UCz3y+bKzFCD00az91XwggHV+T6EHOvhqNAnN
	 JVtNQ1byOzFwR+cdQruscmfoVIyDHTYQ0lpwjyIi7U4sa60xmobMBrABa2fgHvgjVk
	 3RGv1v8H+X6/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0683E7F153
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 10:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169598436871.16950.1246797303421256881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e66839b289e1257d7deb1058c77e6151842044f6433b2cbdf5fd7fb893f9cf
Date: Fri, 29 Sep 2023 10:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695984368
