Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043252F35
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E4CFC433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671133287;
	bh=Y3miu66ablZYWd/2WFn0tD8S2PvkeI35UNbjbUeIK+M=;
	h=To:Subject:From:Date:From;
	b=FFfpuZYrQGBy1A6aHh0LygHEi7TFmHWHlciy7wDgA58d1KM0iNv7EQL1X7eeo1kRo
	 2vRGXr4uSAV8/6CQzkeqaG2zUB03clqEjVXxZkmPUFs2nbKkE+KnT5wsZdOyeZYEw2
	 Dfw4xJSB8E/j5hp7wLav9WCo606VGY0rA/UpjA1MLiFJLuNbr825UiTDc+duLffQ6E
	 GKev+jK06Zomwo+FsBoOVxNLdDdlulj9NsTyIiNGJzaMpHUyLFE7iYkz+DBMBKzKyI
	 tOdYKOzoPFyJaGIvu3sC7YCKWGsrZfX2m9umTPQCqnYzJ3BMq/U7pmaUI6zH95jh3r
	 4ysXIm+xmpk+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7220BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167113328745.21038.16380345085106406567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52152daf2f9736a6da4d1aa0fa244179300cd8f44cffd2ba5513545545659cc9
Date: Thu, 15 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671133287
