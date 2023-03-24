Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5F86118
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 14:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8EEDC4339B
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 14:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679666465;
	bh=C1KA7pnxtQw+OCot8dFHjvXAumaoEaoKbzI2BDxCrKQ=;
	h=To:Subject:From:Date:From;
	b=e+w7MU056H3akILJbu7h8sxfNc2dztjeQjofHkBWQMOMtM5lfrQtk/c+jcOxtM/NT
	 uQKaBuoxJdZTgovIIgeKZfIkR86sHArGKOiUj8/Mt31rDRj77tATSZcuccFYH/Ez9r
	 I6IOvNVi/EeqgZ6rhmxVNqdwSt2tJ06HA7cOggUpdF0D5iuYp/NTRLgrBbRAeQYXZk
	 ubeOMbrJ4bkf3Jl6zmaqQgK9axxf4KBbm+YIekwvSx2OwDLuq1Q4yFXD6pp3dtS55w
	 RGr0OJON3KjTca1rWiChP9S0D6S8Bz7Gd4kFO6ySyGAVM5RaCHCmopvNcl8WRmKkrN
	 +bPt8LxWN4m0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC852C77B6C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 14:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167966646582.19338.2367742746155513590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346bb723079fbe48f57a15f49f282e2a63d5ce5a60598a15d9a0cb9cac7f413c
Date: Fri, 24 Mar 2023 14:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679666465
