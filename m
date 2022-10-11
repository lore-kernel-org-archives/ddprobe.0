Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDABC23A2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67EA0C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665472253;
	bh=Y3vzoZG5hx4y/fAdAu/XIi8SaNLonNlnr98p/YFWiTs=;
	h=To:Subject:From:Date:From;
	b=rYxPz0RS5UvzcA5plHpqi39NxodvHDPTOHHoDW9/zClcj3r8Emsip+UKUspTYIjZn
	 +5pQgGoxF2mrTxM6hbGlWs+nku3p1d2yfj13OQ+ZYG76GE7V+Hfo3yMz4lgDkNm4/c
	 1tSftMjkoMC4dbTEuAQJABPnJA5h8LQdONpOZmA0KOU0qW+OQrFJ++Yo0OnB/JFGEh
	 52VjU0sEnS6dqse0qC0g3zBT4uWfKRSA3FFyqb9pG4rccSyoZaJqvG0m6m9gOb0TEr
	 N1DEP/VENdop5Tz32T13o1OeJqgO2M7cfMShIWEnb8s8Oqyggj7RMv/jQvs2ORdBrC
	 ehovcKRhD7QUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51420C4332F
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166547225332.19955.12011516417840418415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78fda56d90ee3fee15cffef42594e835887dc906be2226021bc2c3f634b42dff
Date: Tue, 11 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665472253
