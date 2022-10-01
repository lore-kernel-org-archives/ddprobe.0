Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA15E1FBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FAAC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664596253;
	bh=I8EhQh2Bk78N/VaehSN68YWGTtm72RwrUyts7eta2A4=;
	h=To:Subject:From:Date:From;
	b=Yj+znrh5fxaQKq3mmNSW/kJ+YckYoy1oKPz6OmDmgWX7PjdXc9++OkjMA/dWJvQGP
	 aN2IiCB+DbpVv6fu43hMcBtwVpK0yS1rjahjVWywlbK7PL59L7s8n3H6suKaqedPyY
	 i7IYhSwFt9liA1OcIbQkK98OOleUJONw01u7GdbwkKwV2B9uFfmPF2XuzjCnjqvXJv
	 3FnXIH3BwXgGkNKphBA8+Yo0nVjrf1NTtoAbk3lJtGrHYbShmXSDNcdEUeHy5efnPE
	 MgVIxVbcnS0DBDC/FAl7zMHityXpTM4F6y4Aty0TxR+W4c5MLR0pyXx8Fz5scDYAzw
	 yB6fEkIGJqXUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FA5C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166459625335.26252.14479678161726466750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 399a11038f794d9f382be17b1a7664a0e166748b46f96c376e2e3e01e938ddd1
Date: Sat, 01 Oct 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664596253
