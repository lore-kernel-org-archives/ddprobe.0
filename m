Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3206FD3
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 23:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB613C4339C
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 23:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675724765;
	bh=o4Cici3tpCsKYw8VzMT6lzFnbSfXsW98bQ3yN0qXWpo=;
	h=To:Subject:From:Date:From;
	b=G2yNI7hZuv6VThB6aoiM5wtN2yWAUr13oJQ942Sy6bKcX3T2uX8G5DP9IJSkmTKAt
	 jcqAaP8zpVTqZlNwlhi0XWJ9iKf/y5MgSh/+yKQVLlvdPqMMoV7PvPh8QQ5zaPvA+9
	 bRYB6Cm+n2EIKSFI+LH+BDkSEunbiLyYe71SzhS4oUYHfZ3KJkPKTPjiDaEkx0TSq6
	 kavcT/SR3/hpeWFUH9p7ibPO8hUoB6CkgVwjdrzZi5hharUcx3cAXyYns+A6/vy7jd
	 potiPROI/GiWcUb9uKtUpRA49/vOM/CHaRW2nOovPSafJDdwb8WjnL7Z/FKBN4PcPM
	 wBrDhP9OR94XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6B3C05027
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 23:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167572476577.15285.17259112015198926011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ac669cf851bbff8bef9ad32a98be91ba52ff4d6c365ea0a9c8e3638fe84a73
Date: Mon, 06 Feb 2023 23:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675724765
