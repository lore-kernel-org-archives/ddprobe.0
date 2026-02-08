Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169E326CE2C
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770582834; cv=none; b=h6PrHVebDVEyvq78XdVHU2zHcK6HVrQy2WgPdmY5G+WruReMVJN6htmqIL8SQXuyp+A+xxC1pj9qo7nKbpyySWxJjuiKSODDlLrnGaIMqadXrRHkQtOvcUv7Qws3uZt8eAoIJYtV0c1WSGr2AH2cgU+XsjJmV7YYJAu26w62iNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770582834; c=relaxed/simple;
	bh=SbfqFVHWtwB85cc5oI8eC73I1Cgf/YVt7JXdlpqojFk=;
	h=To:Subject:From:Message-Id:Date; b=JT1KwfgPNOEGkXPLCJqdSuKorniPrmeCzsz9w3XLc7qFkgAftSafuPK8l4E8DXCe1CSDXxzQso3Xw0XNUV/fwkd76Lf+T1Xp4QNBjHMpV6+xg6m9AJXfdRpX3q0mwIzNMaFBzObxovdiFTM2eZts+fU1OLL0+Gu93+ERjpuRCgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCqRw3I9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCqRw3I9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E67C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770582833;
	bh=SbfqFVHWtwB85cc5oI8eC73I1Cgf/YVt7JXdlpqojFk=;
	h=To:Subject:From:Date:From;
	b=LCqRw3I92Co/pOPEJmo5ZJ9U/OsZyLOHA7D6b7PP3DdiIQNqDOF+VE0MMhHASXem0
	 cV6ZxRUu5Oa7jwK3+AR0MF5TCnOvzUwU8Q0toEg927264QsiqjbNrWMuq+aXY0hQND
	 jztoxUrBvdxd8OkP2Rq8Wa9hvRQ7ki6uQl7gPoiXBZmWp7BdbpwJtUY3NKO63q1qEw
	 cNazSJim3RThn7MQfFFiId3j9RmEd6G0cQQgh+C8R+2Xu/uX7sie23RdjUfRZaqK9q
	 oNWH0IAEprSXGVEv+RheXrjQhsB5GbLoZwv1otf/NPGETI2ggql7EP9NBvgMNWy2U5
	 JayeO94NIMQAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91614EF06E7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058283358.12443.800602936045870370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b85d9372916e359086fada31e0d39636b014fc6b93e06a03a8f9217dd552a0
Date: Sun, 08 Feb 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770582833
