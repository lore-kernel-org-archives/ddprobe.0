Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14DB6108
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE81C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673287887;
	bh=5HUdk2RMQMk5nvH0Mro8qrH8AaUKa7w7nAYXwNGRd6M=;
	h=To:Subject:From:Date:From;
	b=lq263Bu2Os5igFvIMMR1iZDCnw3miWwPYG6Wni7C18DrM3TKk7TOF2dgte+maQ6P2
	 PBdN3qDoHIzQBbL24v5b7W5RLa9ui6egzzjm5+ETLeA+ttYWQnWosL085iVLw2iwr6
	 l2xczrMaAo70ZK6itrxyoUPj2koTKTW4lHUuypdmg9rM5KDk2N+Zujl2U42kTrL3Kn
	 liJ32UW1zECn8gP48ItixJIFGDA04VRkWJ/iGFxRcpppG/D/tKxIuQ0iG1d/DFI/rE
	 jOc2X8CfDS2la1xS/dqKssowrUFMgCwNLa2ngY8gTobT6Y/shImsGyye9g6DmyMBAe
	 Uv3HOXqPVqHyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F40C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167328788740.19068.17574878766683778819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01dc2dc9eb81f093fb051fcf620487b652fe41aa076e670f7893c3adb92cd73d
Date: Mon, 09 Jan 2023 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673287887
