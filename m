Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EEF79EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 20:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03EE9C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 20:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677528366;
	bh=jRiUPGsVkD5whH9rbr2yl2+tyMfwO665hd9ZHRgBzkI=;
	h=To:Subject:From:Date:From;
	b=f/9S5CThEVRbWnMXcV/7Kwo8PLnGy2vhGv5+hCEnny/Yy1bDicAf4sWS30x7+pC0U
	 TPW4imd3cu1K6f7OxylWSoG2Fo754ngM6O2FXMsAb/36AY4r7Kfz3ugV02agXr9Xgw
	 DN51IPcxsllxL6OUSB6roYDng5DgI5qXjWhrEVb3leaLdLvAtFus7EElIfjMrOQ0RF
	 B1Vf1YD8eHuFuSmdgHgUgxn3Ed2Blw7cMAptXJmAPwLYosDY9sygrcZYeFu1IbCKf4
	 nGYcGxWsEhyl4XmV6MosxSB6JKM+YMitWGOKMNLonE1/4UBSNr24K+fX7yiWIAZI3w
	 p/mEdNKbk2usg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6989C64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 20:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167752836587.17025.14027355078042506673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7514096e976ecd5b89bc05a064ba1efd962845e22e8edcaea7ce472342b493f9
Date: Mon, 27 Feb 2023 20:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677528365
