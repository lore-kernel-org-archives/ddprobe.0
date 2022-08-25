Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E2E66E6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 02:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6987AC433B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 02:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661392852;
	bh=vlLpRxCagulqL4UG1tg+hgN6cHqWzHHonHm/2Ju4zKs=;
	h=To:Subject:From:Date:From;
	b=ideWndDj4fBqFQw5urcp+MZ/QYelvQmqD4wvYmvMIqQUgesBLy2WbTL89tDNOLWZK
	 C5lHxo/qUxabf95+Uw6A9VHlP/Qxr0l8KjIxPkBHohtBwQU16vBHtn5oXlGiYlzu9B
	 XdXrF5YDWZdpDt28hKZFnzZBYCiJiJOr8GDfK5A/XmJOap3/vCqOqp2FF8SI3EOwYn
	 OSUL3X4em18a3vM2tswFoXdD7WmtnrtiTNcZXRePG0WRi22bdqju4soVg7E1gQmJnL
	 AtM2ffxpqfH7V0zQEqvl69/Zozw1lthXMRkW5d9phM6alMc3RMANF8M98N9RA2pw3k
	 ugRmxrUyqWF+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2EDC04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 02:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166139285231.20536.5121671863120394547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b561a981792bbaccdb54268d7bd219db7ad0d4187a6fd0bbc743d12fabccb6b
Date: Thu, 25 Aug 2022 02:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661392852
