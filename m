Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571A5101F2
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 17:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3019C433C9
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 17:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688406969;
	bh=bjafHMrskVkY70uqul8P96FG5fOf8VI/e5BvoeM4k/c=;
	h=To:Subject:From:Date:From;
	b=AfSgU3sOcpIGfxc6D6WZgtie4oQm/6z6EGv14HDCh5QP+/KcgUCrfmwdjZae3t70H
	 VrO8JZH5jqoyQjs6JftuwfdXufwmywbHHPMHLWl6ax3zlkvTD8XFH4sqNKuHip3hG3
	 JkYIhO7olUFCh1jp54YgEeDRpAMEZclwTQDbUXTeISsrSmwsHA+gOGA85sLK4N6QRE
	 pVAWYaPYkNTAH6lGsssgzU50FCCJLjBsJDiX8zdO8i0juf9FNDzpbrrQj63m8RROU1
	 Z+RHTXPfO0UebMfoXOg8dI8PoNNQbnutp4OsEvFfZ5naECBMsj5YF/wkpzMCHvo9v9
	 Onv0EX7WRihaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D77A4C001B3
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 17:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168840696887.24882.4616611040465594886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1794a7ce02c1748b77d2daa5457709b72c58375b2f6e7c9e1d2c04105e11662e
Date: Mon, 03 Jul 2023 17:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688406968
