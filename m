Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFA322759B
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754090394; cv=none; b=UD83SyDd0Cw4bPb5BkCeA+nt3+YEGYpVJvn7eU3OoudoiX3vqm95MgKgvkhVmr6FCygxprzFKwZcBacV6sNvC7peTpQb3FpHW+xjeYvdwSwRpSp8ONJiNXQh2ss1YG8QgBPpzgJX8Hyyr83/VzuJG4B1p+Aey698Z1tlBLSxQ7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754090394; c=relaxed/simple;
	bh=7HyGfoQscbgduZWUXrYDSmISNkzq+b+HqS1bLcf8GCU=;
	h=To:Subject:From:Message-Id:Date; b=IsGVPLrR1ZeoK3xaVlBDkiLCY1tTt1l6cPlAtDW4E378pOZk2XbyWn+46vj6CyUScqtZNrY3k38/lEU7h5eoSGXRuts1SUwBj520ztsUxVaJXcfVjBt4Y0QlJYmNpm9NM7xdHPcLnc6T7RMGxc3c/rYm9bblTcRLRxbn5qIouYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOH3SPX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOH3SPX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4325C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754090393;
	bh=7HyGfoQscbgduZWUXrYDSmISNkzq+b+HqS1bLcf8GCU=;
	h=To:Subject:From:Date:From;
	b=HOH3SPX+Fv8XbqftO6FfsEHqsofqmg/RxYzsAaRQH+NsXx061FhK52f4jY2I3P2yD
	 6cUiVjvslCfRXN3KMWnc1hxuNzGTm2Wvyknlf99EFSTsCGekl3SUZuwNC3SDM8PCGJ
	 /P+6m7qsxMu8i6G34nskcqkkNg0ooeDudVa6Ge8Aecxv/eaUz+XikrZy6RQXVk1e1c
	 4YQQqvtyxmi5mxwRkUxXpQHUv0oZ7h7ZuMokbnGMIcPpIcpjAiqEFoEh/5wvGU9Azu
	 ttQDC0pZxLB/H3uO+OYOC542sNd3MQtNKacm7GToEVsRrb0XR7e17Ljbrty5zeJp92
	 h8qHoOgplth/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E94C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409039358.7855.4368378064193875908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25551a78dd75017697419ecfb53e0a404e577c716526a008876a39a5b981ab71
Date: Fri, 01 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754090393
