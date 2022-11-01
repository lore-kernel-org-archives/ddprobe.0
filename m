Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0CA2F49
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A1CC433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667317254;
	bh=hCpsO9YF0H8SZ7dePL28mImbpjUt4Q6dFLWum1+4HKQ=;
	h=To:Subject:From:Date:From;
	b=JzJv7KuG/u9l1NETOW+m/JEwVNl7iT279lyQ3hZWHtK3Q71W9XE2h1FhPBO4w9Cef
	 wuur0OEEqrARG+dSD9/IqkvCOOhQUU1FuVSTZn8tgBRZtnQj+S+oWZHy+H3qWRyyR/
	 QBoFA27WNBbU9xLqZHfboChoc8groB76imSnw7s2PNTCTo/N1/sX2nyy5arHIQAPJj
	 9fPUCkYUpTuUrq8ZJEwjQmsB5tKA7rDyAqy5DbCztFMSaO6zPVmz7kBBmHdL5X2Jlz
	 0qNdSfWwv8qNx1VeHI8w+L/P8V+DmXhLqD88fVJHyKkO5FL//CD0xVlDMZG/tweHcT
	 boVpCdgw2nTcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 589F7C4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166731725435.22142.7854341112894475018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1213e844a313ea1d3c6f4dd536b898793165d0a9e861e2dbc8c091bd2e49b3b2
Date: Tue, 01 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667317254
