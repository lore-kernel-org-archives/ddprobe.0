Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332C53222
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 21:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC2CC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 21:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677877625;
	bh=AXT5swwWxiWlB8GQgZOqLNGmm9UoonSxC1rS/5CRXrw=;
	h=To:Subject:From:Date:From;
	b=B+ukCN25HXJMFxZccdRlOFyAS+sGUN/6EQLuU2NUTy+i3jRG8oam5SUY0t5FXMaco
	 V2bIKyytCjxoK9ExOmF+R8sDIzzuhwmPBys1vlYYe8q3raR2EUwoesdtNtwjgWo1B8
	 2xq0xDQ9gKk6i1Puf/Aq+tBgbo4iOJl3NoVNT/krRo79I2JZ2pTEo4ERWIrCuLS9Dp
	 G/Y0xZAJiWR7GyCyc2YYHHdqoVkD/Z7ARIPOy2mrBPkE6ZBLY3Z45bkarQC4FbF9TF
	 c2rYxtykdy/tmlc6Hogn9cVtY+jsNllVOgy78adcPbjijpWAkyKIUzIpVvM6XkQyZ7
	 yWXSeuUHakAiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CEFC64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 21:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167787762574.21288.17339045929043286050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a95987ac32b0ec0207e4d1b0a330084d302206b8540af7f949e409838b4c81
Date: Fri, 03 Mar 2023 21:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677877625
