Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3131B7B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 10:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1943C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 10:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674816785;
	bh=HaBeDL60kFufRPVg8Zr5MTuw/sGvVrHQZMHE3VYZnBI=;
	h=To:Subject:From:Date:From;
	b=tRW6XHtQyu0iO9spLxWh76zq+biLGRKi5AvOghQuCsgafy2rTlyog7nu9yZTzQ4Qr
	 4pXTawsbGSHGuSlq3GlP1I+k3zlcPfOrz9ENWvV0OMcU9aS+KzAk7yOgsL6JB+Bpln
	 1cDAmpwqErSzYVP8A/gu7q4CSlCujuLeqdgpqm0F42lGCrkzjNEKd2ofOpDVz0UcJn
	 VI1Coe2CZNMD2H/VICFp9YGNXbDhJiBT0/BChV4JcGQJHlIK+OU4cLC+ie3TJm229A
	 H6n2LH8wykd9ZIKQy9wpIJOiMQXPAl08ooq4jNWEEQDKcG7xUIUB0lLjPl1spnOf0K
	 LtrVnJiOJvUkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B7BC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 10:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167481678573.11997.9700104393806751958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f514d8e3dc7223c4fded4449ba0542f6dc66d1f6062fb5c7c5868d5cad163e0d
Date: Fri, 27 Jan 2023 10:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674816785
