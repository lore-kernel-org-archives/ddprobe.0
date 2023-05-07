Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6A13239
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 18:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B08C433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 18:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683484685;
	bh=yUVpJetpRBojVoHL/ZZpXZNe3YTCTE10+o+UzLBrHH4=;
	h=To:Subject:From:Date:From;
	b=thq4SbPxhSYxbx872kOu7cbmD9HYmZr6n0kDHg2aaiva3+0dYuPcMMBx+cnYzJdF/
	 Wou1p3skQeaW1d1YacyW+p/Y+1gYZNS8pwtfFlSKrO8eKTUYWtC+ruxdXqMkzC2Iip
	 2cQmZWZFNJpQZi8xV3HhY0hP+EezadFlqts3xZN5lAUFRJVUNqV9cx+xdrF6n6lHeV
	 5RusTXb6HrQ+9RpaBWOb68tMFwUqGMU/JZNWCljmy0DLxZM1+WENSFBZk8nTqGw9hd
	 jB14SFwaE5iwbvrakri18x0EXGwk4Z1yCFIcbNw4fOFSxLxat376tqKOE4nDvb5ANL
	 215rUxCjWp8fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3D2C77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 18:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168348468574.3437.202455757640444241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32cb5952f3d973cb8e71b026bab9d8e8b4b7c47b8f39282977b4ab6b52b9f49f
Date: Sun, 07 May 2023 18:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683484685
