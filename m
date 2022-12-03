Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23DB1FA3
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A63FC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670036454;
	bh=NpZ07xG1iCjw6lbEet6vGOaDP8idz52GkxUf5Ru+t1o=;
	h=To:Subject:From:Date:From;
	b=FI+h4CiTkNhWt2R8TEsua9Tz0CaTnD6Kk+2thg9kSmQ8RvOa4US/my6Ncb7nIpkrA
	 Cmt9XfKL+WrN8RvLmKNRwQoSneczQvm1wURb3LloteRRYbdsZDX7o8gNiMPk1Px50i
	 oElrQNcGWSLYirl9j/pfvk1eisx5DrbNgYNChzeGmhSSkH42xUa7RuPi5iNjkb49U2
	 lWejvbER87ssqZjTS+lE0UcmjBwFOPeRknWz9wUcmu7BxtBA2555VD0ocBZB94ZssZ
	 wKDkfoihQd6rb25mmPC6rMTahQWV306UpFwYeALi/u/1UxRKAi8VOovWCoSiRBln2L
	 DO1Y7yAo1mnkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F059C4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167003645431.22520.873276820132849998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f3e309c168967f7addd1c0781b09f6da06f2322f486bd704467fe9985039f9
Date: Sat, 03 Dec 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670036454
