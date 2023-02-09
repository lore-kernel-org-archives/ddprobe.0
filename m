Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2EF33ED
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 13:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88C2C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 13:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675948865;
	bh=YnxyUrGC65yWMsxn0NyI89XYQLmIKRX0S17vJ11mnWY=;
	h=To:Subject:From:Date:From;
	b=MU0m7KffY3duOYtVsar5Sn7YrRkDEXLStOAwJyoKzxtv2j5o3K9zMwtmWohM8L2SR
	 PhYU7rT27Bt1HreriCUI2R41oD/+L8Q15SDKX8UBrzcKimZZCoQieKQYoIUDq6aa3t
	 iuuy8+zngccgK78cfkiVhW+9N5BPlIn+fFUZMaq6Ka1PdQyCOHdtIxsTRPMKSIX0kq
	 mSgqCXtKdZHlAPchvAuh/K2U1bmpAoBmr6L27czsYKtzdTmwKNlmrI7e8xrXrUJXto
	 dHtJjvK89mjobH1Q8n2w5QXPixFBZqCo138am/WF+GqJXVkExC5t0wNa51FHbjO7Of
	 J9nryE9+US74Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE045C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 13:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167594886576.22317.1681076104547012163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00259b39809c2345a90266570f63ec1999070739a7f56a1fe8b98039b5c80765
Date: Thu, 09 Feb 2023 13:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675948865
