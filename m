Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35144A1F
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75BE1C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663588853;
	bh=tBYbuNyrWZy5DZ/IY4LIwiLNTvV8kw/93N2QzzSBKOk=;
	h=To:Subject:From:Date:From;
	b=YqAO9VFDPmzwmh7vheq+REfyCntyVYVEtu83x/KAHGZ2EsVKx3V94qm2Mp9TG9G3r
	 pKCVrGr+NRW3RrZoJGTMDDB1+mBsvegG08LQeeOEeF4/dHXZdKdAfTWMrIZmgRI5qP
	 Onu5iafUBUKsBHo3+EONeicJxSOIYr3Nhx1o6LJjCzw9L525pX4VHt4+czgIKI4iYF
	 MgW4mg1HjbQ1hfhJ/XE7iKMkwCofL+aV+UtV91aCJuCNCyZqn2TStCNeukD/j+f/ge
	 xJ7Lx4KHirV2DDBH9Nkm9e4gy9EFHWHUGhxJ79deZqYPc/gN1pWbbL3RoeFxTaZ59H
	 aBQdz+YCYDblA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57DD3C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358885335.24659.8750411006770253451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf68b400306ecbb1647cc3947c7c118dd81b5b5c96ce7d894e058d2f4a5d6e06
Date: Mon, 19 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663588853
