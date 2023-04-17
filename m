Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4AB848E
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 18:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB748C433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 18:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681756145;
	bh=OXKrtYbDHw2t62J44yYzwBOLBpoZmNNhpIs84uHlj6E=;
	h=To:Subject:From:Date:From;
	b=a7TkiMMVl5pIzGf6fBXXuyy2RxCS6go6hzVtXKEcmoCATWmNBD5orXQOvGcSWehtc
	 ruChaaXE0JJiP6Tq348NUiGPar78NCTQoGMr1Qo+dk2wlfCqOrvCCSoi9r13zn79kw
	 k1MIjRyEKNDR0LFUl+Obl9ViWYDwaKu5j/vX+NQ2iM0WOQYK8A06uJT563yqCPz0l8
	 M01J1ApDo9YDz3XhizzV+gQQFsVUOOJ4prH7AVSQLwZsye8FgiUEdR+BWheTSQWjqA
	 GbEiZGShZoJxEJpr6gP/be40V5/n7G510N1/SqGtu61BBk8fBuPIkyOjxiIUF8TDcw
	 iuchu9h3DNYDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE557C77B76
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 18:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168175614576.8410.13859734023977102333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0fc1a382b86fe2be8be1d65b30c70106011df6795105bf6de37902504892d05
Date: Mon, 17 Apr 2023 18:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681756145
