Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E8A79C9
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F35C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673535687;
	bh=A9OyIgXs6myr3jOESaBICCqX7H5xP6hjkVl+wRSI/4c=;
	h=To:Subject:From:Date:From;
	b=kxCTdcQXfV9ByYCCkKDczOySyX+AKDzn3hKU2DRo+ZNH1vt30TLR8vJCa4dtQVa4U
	 Khl1JIL+9b20mV80xpBUzV3Js/5F6IJYBSWxaXQi6Ky9cqTP4pcK+hyIE7XDqTTxx9
	 M5Pb6W21Ddoue95jrQgKzFh1EdnOoR6XEAZgI2DxJDwsvTwaEYGI9UXHlXj67CH3pO
	 132wHow+Ynnsn5oEF0TPnjBJ5Uzs2GxLpGdDb0w9TIhwm+HQiE2sv0FbDEdOmyRfsD
	 vRrUrXrI0AMm7a+BVwZJtcP3nzmOjDS+8gHyPtjQEFwjQMtkD2dqYBE0oy5Gp7bSZ+
	 CvUnldRlyE/IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DC0C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167353568740.23716.10681258049912191160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b260c2e02576e5fe095b4d4eff2e2001cc85d9c69f3fbfe02d8fafd2560cccf6
Date: Thu, 12 Jan 2023 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673535687
