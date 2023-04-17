Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373FA8460
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 15:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC45C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 15:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681744085;
	bh=Pn25h4K3TTr1e3hRdZP8sIC24mo0HbdzbfeI/vKO5Rs=;
	h=To:Subject:From:Date:From;
	b=a56gU7qIfoz+uaxIiSziDic1ZTAGsXkqQIk0BCSdd7t4qA3Zx70OLLlNtyEJ9g9fg
	 3M4v66NPDqsRTwWgU+RyURbU4elvGDKVMOgktGXACKreyaiiwPwa21cmeMdMYp3ZRJ
	 dFBg611Sr8NPwfHo5AWU/99xGxKFUZmY7XJ+I9tds/ZxHnTGa7iR9PJamVqmM9LlZ7
	 MFR9KuPvpZq5DYMpfG0rqgMtYHOgIlpacv2NbMHGWQXKnCCzs7UklSYqngv6U6TWyc
	 0tpjdaG8pGl6GtHD+p15WLLlkze3xJuKzGzt/Sp9NSSHeTaofqw2IgtXDNFOUQ6vhP
	 tOTB+5JjysFEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B2CC77B70
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 15:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168174408574.6108.14874695712061463481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd7997bcda9a260944a1fa4cb62d37fafb978afafecfad4abb4c0583310ecaa
Date: Mon, 17 Apr 2023 15:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681744085
