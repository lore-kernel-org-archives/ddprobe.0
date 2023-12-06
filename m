Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158A5321B9
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+vj8Ttb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA60C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701863896;
	bh=LAQsb0lel4mA9HqrXqlCcPoE5HexV3XP10qrMe5eFV4=;
	h=To:Subject:From:Date:From;
	b=W+vj8Ttb5n//CLz2NE8rLfKYclx0ym7XW5ZKUufM5DGDL5bQ88zPA4QmXNHcdmg5p
	 j0eNvPKwd2tc2sYUshLPGvaIuC3KixV/FDr3STwR5C8KCbXujTCs3PKk6UmPP+3qMH
	 LahOZMnCDiHE6eEu3QGxiwm0ejUf42kGTcCd6Pz+gstseRNnTsPtZaQ/XewHcunp2c
	 7Fcz701G0GftFlyv9jUpbb++XJnv27CfkJbeRt5dqhuExRMk5Q3/UG3vTMX+7RMLOB
	 wPM5O0ebfFtbaOf9kQSPgsk7ArmgU31onbbEIcQslXLltIyEgHEZgUFxvNmstV9ug/
	 lOpxVKrofCgnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61437C4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170186389638.28000.2779047078497794199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a02d77f1e4567066d35d63c406f2d9f7ac34ed7378cbc07c001778c8c63bfb
Date: Wed, 06 Dec 2023 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701863896
