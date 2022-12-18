Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC0D367
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88A3EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671339687;
	bh=4JGzSXSeWSz3rz/0EvPePnfzXXB1PK0n8S5sKAdL6Zw=;
	h=To:Subject:From:Date:From;
	b=hod7oWwwZj+tyiBAcazY7ZEHed6zW+vyyZe+JVgJqjlBYNxkuLL1ync1wsUFlgoLV
	 ycKHav0dLDj1MCSfQ/IdhHoSe8HN+t5Cei4I1ZBpHNuh5Pe18jK5tTVV4cxEwmr6XX
	 6MYYKD5cYkp2SJDMioJegDa3VkKGIDygzMid+3tUGAeRg6DS15RAaMkt9qQu/Qshxh
	 rnyv2dRwOSIRn0h3+qud3nI0WjfhqHBjLkzhSSbL5YTT+lksapY32YbU7c3VRsuKtt
	 FnmcKpx9FKSYJH3wyWcSDm3nBYcm8Deg2VtP0yQat6yfs02+SHK6VPAeAXdZlGZEMe
	 0b69Q9eIKrNqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A80C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167133968738.29460.5187213750085699164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd8ea8fcbd23d99d697986bf67ae667fbe704b36db2383148ac8ac1e9ea21e7
Date: Sun, 18 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671339687
