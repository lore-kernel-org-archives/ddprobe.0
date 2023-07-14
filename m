Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DE96FD3
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 09:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CF4C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 09:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689327668;
	bh=kmDuS/ZI/LwXCKDAFkrhGid5OXtVIWsEE3smJqM3/5o=;
	h=To:Subject:From:Date:From;
	b=rfrKojSypqh8wCGIGJaBS5z/rn6zjPgiP4qUrTSyrsFsY6uo0R+yDgjp4Er5/7M/0
	 dUUacGqRuexC7dFwJDmEFgc7V/b8JKUYsFwEdXMgdnLGT3BzK3TI1eV/CsQ7OB4jbV
	 1TRAsYdrGkz2m74fqHgzd/hjSnQlqYcaiP3tIPjsRzmHTMod+CM8ZqPQFbQFVIyUY9
	 aRYEE7ERY6lsYWOvOFwrrDTr9Ryqd3Vok92dMAKL6BF0GZ7NAHg5NBA0s/KR20m2H+
	 1MKciDhIGmht+LovzK/QCQUAssQuOjz+GQKGIdJUYguuGFefTkEWw4yXVooh7sYj0W
	 k3NOHEV3lPHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBDDEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 09:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168932766871.6256.16903583178955022449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1932071ea1805b03ebc83440727a410a914da37ccb4a3e2add018d9de5d913
Date: Fri, 14 Jul 2023 09:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689327668
