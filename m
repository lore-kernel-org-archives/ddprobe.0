Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EE93234
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 19:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4FCC433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 19:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680722225;
	bh=7PHHtjDaUyU4OOdpux+h7LGYI+PFm3KIqtafajNEfeA=;
	h=To:Subject:From:Date:From;
	b=Kzs1n7xq9qEC0IaBJc8qkd2iE3e8hZyW2vz9YGwdW0YkamAcT5rCUOuTIG09ayybI
	 KGf5+4k5/1mh4BXnA92T1DAikNzyHchAfiJ2rqb7DGJoOMlRizS/5kyz9O9Nbsx35X
	 268BVkFscZrRIy9g0LfMirfxBDhtNG8jmnN9mpEWNiAqoG+wesiFe16sXG9CaOsyF4
	 Qh+NOFXq9IMQvfgv77M5lgpsEvlaV4hAzcDCUOiP7opTTVeRhhxEF0XJ2A9zaN6z0u
	 DT+ws0WX3YPWV4YqVUDKfAXKM7MEiWSpKaeJhV0600s1NUuHNTLx+mYA3C7CaPcC7h
	 QB06zHR3XnMBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB7A6C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 19:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168072222576.6938.9756850699355447405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c688b4e70dc12ea25ecbdc644014fcb1240ba64bf3197ade9d29b9b5ffa5c5ec
Date: Wed, 05 Apr 2023 19:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680722225
