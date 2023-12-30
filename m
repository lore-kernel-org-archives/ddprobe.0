Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BE6D518
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkBnaQP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E600C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703967496;
	bh=06jWo3AK4R3j6W/+mYwJnrXjmBhop9VQXnYq7bdPw8k=;
	h=To:Subject:From:Date:From;
	b=PkBnaQP++IifJy2+nE3Ix1T7nSjh2kHD7Avw61Ww/es7qjWuohHsdyV9/IouqT2qR
	 2Yeyy0V++lY5pajZUe+X1wUyKQpwMpTtgIfF5TmVsBbBJCTGR3HLzpfSvtZLEgKXt2
	 8ve8s+G3IsWf13dlFS8Lpg7AiDL/bOGX7tbOvt6NKLOCAyjOV9BMJSSHh2/fL9eqWk
	 SWY9ykr15ZjRfGuM9phhtky+TBEZTDevkaH/H8olu67Pwm1h7EQQZtNhzT011H51wB
	 u3xW5WR0N3v4pGPseyBQabYwE078yLQR4BADW6FkJFkS2ty/6WpT8/+L6ToB25gJhu
	 lbRQbe9vE5wvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 651BBC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170396749637.30566.645739781631537142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1c161af9364fec229cc617fae9f1cbf58eab01c5d6f85f94999f42de89e31d
Date: Sat, 30 Dec 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703967496
