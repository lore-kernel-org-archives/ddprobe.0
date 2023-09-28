Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DDE110B
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 08:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C651BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 08:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695890168;
	bh=77//+bgld4uZ/IyNKZs3WJVH/qKAPU2FWMyyKseWv5Q=;
	h=To:Subject:From:Date:From;
	b=ZFD2MabCPGNrg0K4n7SwyfSiXJicVeVpCkEgWkKTVsoYw1DE4FfbS//3pvGhkBjZk
	 IzG1MNSqAJAC/LWGiIQuPGjJWIIt5uN9GWV6fRC96zTHi7WwQyOab7/v0SCSzK6tCl
	 qQyzkn9jNZKD8dabN9Jv+KJUyxUKGbJY2lGLHCVfgk9Et6l26QXJ3fzWXz+tlq+sf3
	 wDmO9IjrQeipxJUzLdjT8qBZIMkCwUA9tg+AYj6TnVwVGZYNRDVAp2oSzqVE2yZQT2
	 3uLsW05OlUjbkBZ7nH5fQ6cYqdXrTdBN1XJZqDR2TV4Clnrm4IEwKgikchY2z1D1nk
	 gfZTIYAeYFIHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C98CE7B0C
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 08:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169589016868.5592.4612439571043953271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f412dc1f618b9f987af0aef5e2ff8ea829f8810dc1cf7438aacc77d2701ec35
Date: Thu, 28 Sep 2023 08:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695890168
