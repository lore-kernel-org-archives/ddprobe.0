Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CF52F57
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 13:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C0AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 13:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661435452;
	bh=EvQCox9S/ogPvuqydTcE/zuM/OZzjJ3Mo9N4ifTOUGU=;
	h=To:Subject:From:Date:From;
	b=jvOjDLXd+yLHzHWQLiVt7tpGDl0VJ/ka7u6MQn6COdcnZZx7r+XK0usZYtgmKd2aR
	 jOmNaKyPhkjCIWynla6RQZ9Qqc3yLrRYg+WQUwejtBUOFTM7NPhNUBFL/49TexRSCi
	 Ye+qlVOjfTHsvXhYkeEIH+v0sIaAJSBx7m5eOSMgdJXRziTe/U5+oT8+wtZNMfidSA
	 T447vKkdNVVBWLmDxxPYz8/cOT/xAk8bdBs9aF9S36evPQW7nrRE53f485iNujATtM
	 LQNsMgnMZkuuggTfxzd72z1JDNJso3jCsx3ocSKQiWBLsfRf6/pVUNJY50zjX/dJpD
	 Ckk1nsquBzbMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5265CC28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 13:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143545233.23674.7218359131630020551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1693f3c7349dce0fbf8cd6f75aa8739f34c98fdcf47b10f5fa6c0874352f74d
Date: Thu, 25 Aug 2022 13:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661435452
