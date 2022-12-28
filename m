Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59976FB7
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 835A4C433F0
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672267287;
	bh=XWMWbt8gcf9GweU9LOWKY0JlJh+n9P4VfTKXUi6yMrw=;
	h=To:Subject:From:Date:From;
	b=PPsxwoQgxk7eW8wmSoeUaHgYNDErkBojRWQcGrndiLTRp1D808p9NNVFd5gPELyXe
	 q734aPywqG+UfKsBkvm+qsnsj7FqwhFG5dVd9Y+WBvip3w6HIFBXgwWL04OjRpKTFu
	 sLG2C0DoRTTjz1HDLu3I7O/AyxKr4jy33BEkEFTVSjc8nakiHo+sRwKj8WvIDtZ2Cd
	 TSt41nwZdIeXnOXDhBtu3k3BF8utL9TB8qIadw78Fz230/f18ixOmc1X6OjTaIaq+/
	 ba6PvFVU+fBCJfpvHGLLEr/TW/y+GSlZmRN44bT8t9swe3jmHWs6WnUGm+Jn2G9iL6
	 EH1r7LEBg/Niw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65862C3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167226728740.5322.1985118281147056064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed025dff9bde27644c7066f27dc909ba843441cdf00e0611282c6024c5215ff4
Date: Wed, 28 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672267287
