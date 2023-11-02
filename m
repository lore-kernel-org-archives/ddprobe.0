Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0700C219E6
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfEQ/uiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E36C433C9
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698955096;
	bh=Y1WfGedKn0u+HM0lzWnjH+i8gU+JUvTWLIlF0Y0YrsI=;
	h=To:Subject:From:Date:From;
	b=SfEQ/uiW+JGj5XFxOjPnX7N+JV/6M0xl0b3JanwbzPB/rzQiuiOIa0q7e51pgy6uh
	 +JyYtBDql2FrhmVgTvOCfVsRB9KwQg8uUeN1jTOubBUyVpqajAZPjOvw2tTTaK+dzz
	 a6+MOMr6Y+eQnewybYt2YMSZKXILikHDiGQM5MHCWKzc1EwBH8orjNYtIDC/4lHjLE
	 O5Bkc00CZK4utkBZdojFDymi3OmFgyejfRYTytfGtmJVcD0J/w42JK8mXJCy2Pxv60
	 MZWLLolMi1WsmuZ7cteW0mQyNY+EMkbIg7M4pATGr1yfHgPdkHXpPqXoYMFybhYDqI
	 burhgP4vmDBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E317C4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169895509637.10077.11488754177323048440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc18ccb74538bcc6752aed4f138e3b91370ff1d318d6b3375778d5a86d00908d
Date: Thu, 02 Nov 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698955096
