Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24F37B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B7A0C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665734453;
	bh=x+bWAHxazHNskx3J/buK4RuvMe1xZ9RqJi+ZC5/+C68=;
	h=To:Subject:From:Date:From;
	b=nQhxp4I87hKYK+xzoi+Xw9YGm99jJHum2uajEuZ1VI10PIMflKF1B48Wz5w8B6vZr
	 iqLy3iD5sl/t9kqITZhqN1GN8uzTuZjr90TK7lqyMJsAupvECtwnCPKiainbTmoiWB
	 IwdhWb6Vw2NYnZAlnlLl1Rs+ujqwrpyhZDyNbv0FGhBCFJ5t8SZ9sipm4H+31GC4jp
	 UMEOyyGoP1cRl3yEQQtq9rAYLo8M2O+xLaZWg2CU6lk5tTHrb4JXvb+cu2LwCTD5iY
	 qZ2q+SDXPkFpamhE2u5pOxU3FzPU7FK6vKPVhiSceb8EodrcoRfiYf+A4A+rArw+w1
	 0KqPI/mxA9Evg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F04C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573445335.23267.3302384360036382547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7675e1a60a555896c953f25c1c69de747e193e17c514bbbaff15445aa7f76e6
Date: Fri, 14 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665734453
