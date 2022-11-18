Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14C8443B
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE07C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668778854;
	bh=6QbAbR3DhBAWIzpbbpKlQFu3l4gG9UuHvbtV7U9FjEI=;
	h=To:Subject:From:Date:From;
	b=YdsSEiR8BSmEBqB+VVfnqAvUGllRFZZOQkWEqKnQIhILCN4BGbNIbuzAI4Z0rsE4R
	 XkkTHRYULki4ehJzmcWHzO6htZkImawgwmIgyz9ZE/0XwU+LWXGl1gt4vfBJ0XisTD
	 62iy6ATK5lSrfRfjMIUNqQVWIiGKy/O5VoE3yrZm5H6iGK3mRgGOTaqGo7G2G9RJdQ
	 tGGOgotVwsQptsTiyu89LY7n00e8dIW4F9VFtNFU52qf9p9dmde7VTrGcRnk7ERHZV
	 bKgU82lDoLdJuJaHbrjfNwVeVur2F6uB4ANAd9gFAOqDWw3LsZCx49nW8cDIJbfudi
	 a8yczuoYA+YAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A1DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166877885433.28337.12986973670324415677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aacff5b9917d6c309c36a18dbe22f98105d981772db1d908e73b30496fb4ab5
Date: Fri, 18 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668778854
