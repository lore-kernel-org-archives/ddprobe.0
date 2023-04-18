Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79AFA185A
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2A00BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681802346;
	bh=KqrN0AVp1HisYO2WxAdU4OFXHkksPG50bgJ9PKSRRLg=;
	h=To:Subject:From:Date:From;
	b=k8HJvf7QNyixP17w4SH9KwCHSwDyyBjjS9ialvvTsq6XLXTdSYxXspSJhU+VluaLb
	 69pczt2Jy//dpMqcKqWsW0DyxxiBII4NnYpnEjoQknjqHrEa+5ZaJimMyUBE1hvE60
	 SrhXP+UUFKWsIbfIOJcA7Y4Sv4f7Ouck8/jTOiS+D8HT0YSJ8Q+vhB/I0VUQQEXyk7
	 6e6jgDq3QfDgJDo67pxG5galQu7BsfmVcgbggyLGyJbvYiLlAFqzypoHcWv6oXYzZI
	 HgZU0mdOKli6vapHx/SKyQp1SB6FW6RytGdtXu517qw2PvyNT0Z2erSs5JB7qZheid
	 Vb9U1zCCOBMcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 078FEC77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:19:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168180234599.22473.18336911973245481441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c432a383af69e3103273ccb4015f6774d3c89bf1b795eda377ea78a8e96b607b
Date: Tue, 18 Apr 2023 07:19:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681802345
