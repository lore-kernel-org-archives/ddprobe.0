Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3E81841
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 02:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7805C433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 02:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674699185;
	bh=MhAvEN+y+QLOpZDVpCPAIYJkrh/4NGElCGZOOcg9Q9s=;
	h=To:Subject:From:Date:From;
	b=u8bdItqoFrmBjHD/8Dq4coAoAyme2996ZB5KyF6+b8w1KzsQtM6YEK3dFJz189aii
	 xSuKT9jBhyYS3MmyPq1s+m9ui6f5hH9IWLky2K6LNQeaTqNzKhB30aeHKWQK4MM0ql
	 y0es6uqLInNw/R+ogtFn32xk1QguYSjGY3eXe9YxR+hpG3B3P1fcYpCrDn/HsGTeHS
	 GJiEJOUlnIAqVYI5nxtRZB7ewhGVodFy3NPD43elAYribMMR5v/NNLnNqTZ/whpLWd
	 N68sQWKWa64R4MVBWu9wJ+0V7pNQLgsRozylzKOXQiGVT4GfpekFZqyLGIQ83+sdI7
	 d7cnmfkgp4jTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8EA0C27C76
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 02:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167469918581.30927.13364610900752657085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f2d9f5980f493ee095d99b83bc2c85cfa835959375855cabd968558c6430ba
Date: Thu, 26 Jan 2023 02:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674699185
