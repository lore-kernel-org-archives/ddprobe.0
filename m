Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C862C859
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746452994; cv=none; b=dIn6yu1Hfg2PiF0xz38AiRvi6jkF+FSiBl5wkF26FtG6at7mixXcEXZk9DqhrC//OWeQDo9HPTVW7te5JqqU2GfQq1MitpljgMSU0h3dYdPvpqGboK5cxyC3sKdM0Tos2WHvO6hInIfiz+L3KStmQ6n91vcZwnB7u0KZdYS2vYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746452994; c=relaxed/simple;
	bh=uV7ZWlrjZDtRCN0TgDnWRw7iQgWY9gYuVrBwiaJa4vQ=;
	h=To:Subject:From:Message-Id:Date; b=W5WNXRXYY7AzJiqlvmJJ3r9qjOnSQrtG+tqeg4dgoFadAQd1h7u57c2eqP0SKQJgYLXC+0F0IQBvAGzhuVY54w7hp23mIfsJ9+3I6JTjOGV5uhTzyyjM2BV+bKWcZ2lG9I1eFSnYOZ7fsjftB78zLragA6gBLnSniA0czpalbE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCLLrHPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCLLrHPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D91C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746452993;
	bh=uV7ZWlrjZDtRCN0TgDnWRw7iQgWY9gYuVrBwiaJa4vQ=;
	h=To:Subject:From:Date:From;
	b=FCLLrHPbG5NsKusyQNJMig2EHVPMoxyibWUpBYvzsHIK4/HbOkjbiSHMwKd9wh7NV
	 MMlHt8ZuLWRiZOtoDWtSg+G+KA6uvy4IuPSYv8F3w2uLD7dlGApnH5ylv5CM3pEXol
	 WmWq3H3xHfTwwQEZ/wpP9DupD6PrKBy8o6FTxqQZ6ZKyUup6fU7dXvn222Z/BW2i5V
	 RqfbFmTX9wlsfmq2Zv2wn/Dv/HqXlBo2k1XGfEWn3h27AORcRDM6X0A0wZCP7IeTKL
	 DVpUhRP94xHlIgH51NOTdm86yYeLTcMYxkzDn0I63TjBcBIq1sDCYhYzHUXqOxaOqb
	 aeEFhvFQbi0mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A7C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645299357.23744.5928003245479034421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6deb23e374aba237b61eb0f06a58301e4e54ceae0cdf3fb7b3af25e5493aa19
Date: Mon, 05 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746452993
