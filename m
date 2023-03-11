Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335DE7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 16:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D204FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 16:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678553705;
	bh=fItm+pPlvK1GxJaFY9XucSbiIpzXbqG6+edDo9YHXsI=;
	h=To:Subject:From:Date:From;
	b=vE5HAUiaX3k2w0t99f0DJ7gdtDaZMlwCQwOOGxef9jq18RcPCJEuzofyFAJEBz3Gh
	 nzzrOiTSApwqkUTJe+ersIT3AhMk4+nk/4cpp080kgNqnO3wyohi4LwGw5bbSVikcj
	 72b3vNUw6NhB3Zw/9fdyxIujBsZBgwn9Ub+VLZgMzJxOlGJ9SmKSQmryNiA10E3Ep/
	 4N7c4qlIQN0wW0mQ26K0V7IDTyF5otsq0rT1hUyjqggePVjI3nWWJ0a2ZZNhLeORAr
	 FixfD7lMB0WfwftosZlv1NI9lN7/FI2iJ9ByXWwQGxzio+JF9cWpHOeeBi8gbRGVKm
	 As6L+tYufW02Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B788CC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 16:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167855370574.23796.17559274734339722730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0106dfd1861de8cd89e2cacec66a9727a268308886b0d96633ef155abe90b1a8
Date: Sat, 11 Mar 2023 16:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678553705
