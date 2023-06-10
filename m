Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E77408F8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 05:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26CB9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 05:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686376086;
	bh=zCNOK+ZMFh4eVacAhIhMO0uB2kmN40+5XfiVX5AIKiQ=;
	h=To:Subject:From:Date:From;
	b=fWCHGkX+Qk2iTwFoblU2nuDteARVLiOBz+YU2DwDqHYE8oprJZNSFXSfXubvPCY7k
	 4nL3OjEJDJEfb+Vl4wuTwP6GmHpZCZR+ZI72ws0MdEryPDv/1QRWDN+XgcwFZM+Pf6
	 Cp4tEhBm3fYYTT7HYzf9T9SiqJ1enXkwFROkPjPfK+LlNftM7E0FBnOsv7EhAa4bmh
	 go9nl1d7USmIE97+xhlLr6v8xafrHrVZCB1K4yAli3MMfL9owGmg95c4SLtSuTIyVI
	 bbebVTgjUxCx6Ehx3VOJoRJCD09or0TbxkaLY5tMAFR4iia3RvXeVN07wCNhkePABB
	 T40JhOWsUfv4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F10B0C7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 05:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168637608587.15317.5669705611683577453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b686705698a1d362fc4dc05a0410f9bd22df63821da8b73391b16af1ff2185
Date: Sat, 10 Jun 2023 05:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686376085
