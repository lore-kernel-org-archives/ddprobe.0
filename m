Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6013648
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75213C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663476053;
	bh=9nPTZhMGqGCrtsLr9MVWMPUM6v8bh2fDtU3rgyqor5c=;
	h=To:Subject:From:Date:From;
	b=M26o4n56xsEUhLE1oZ8ADDN6PcOZLa1aEt0RU/qjphCZLBnmXtVYSQhJjJDcEsUEw
	 srNy5xYj7nMsa6iXEDNjNTQKzgDopFSb22V4OJywflHUFuYldXCigUSzPN8hIJmAs4
	 gQs80lDkxkpJWRMuaGBnduPcdayuhd84uH5IYN0l8GbWFyet2wWZdFv7+oGSzsZ1iY
	 LPCGP3idDZbyjAax9DK4Dvc9BVEwRkMns3rOnQop4Am1uMIY3qvZzXe/iIYJM6zNfT
	 wRgF/GgktUPv4STzRo9Q3OFlVbfMPPHZvLpWL/MMzFQe/aQhZwQCI4psl8ipSIJp+v
	 l6PT38h14KhMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5850EC32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166347605332.8730.7391172137779665759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a70490744f800d99fdb1c31ae55d231398c9839b6d96196a935c5613920ae73
Date: Sun, 18 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663476053
