Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F237ED0
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 06:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0DBC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 06:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678430705;
	bh=6jN2LrfwMkazMXhqW/tAZ/y3dNpe3+fxJTDsEq3D55I=;
	h=To:Subject:From:Date:From;
	b=LuK1bGAvvAWvpc1NMZ3mMt+UMVjeea2Xgg8McLVuYndve+IZv0XavvWrC689Tyxs2
	 fLcIqwkCpMOoDXnODgFOwMwLIiEp48zR/G3S/5MofRuun45Fmd91KeGLMzn6go+eie
	 hXBKc9ZXoL/gIkkEsJgEmGHf9KVFwoN7Z0vyprJ0GNNcKoXNwHmYAL8+6eAtjOmQad
	 1xxMtzIKaNAY4Q1KoyzDsp0AQJkMi+MDc510GuZ+QZs5FmPfaqHcafgiKbMK2pxkX8
	 y585zsFQplE88evMgL0XitfiuusxhbhW0WeMg3feJyoA9sPVFTnWPV3vv3O7SJ8F6m
	 3zLgFisTN+o5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0FFC64EC4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 06:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167843070576.7324.6506059253710930295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a41f3fa0044133ad3e6de3afef4d0ac3b217fee89f117be4a78a6ff10ed6f3
Date: Fri, 10 Mar 2023 06:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678430705
