Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10832F21
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BCD3C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671713487;
	bh=QaYGutQQ25rHhCrf4BcD0NAA0PP9HYYTUPC4RhaadZA=;
	h=To:Subject:From:Date:From;
	b=kWqed8185g4u77GXVFj3jJiQynYdJ0gCJyrqPBWASuCbbY1YNH6UejJadmJJ8GY8R
	 4f7Aig7L7Szcub2d+Bp/QWwxl3ucvJpeqO7mjjd7zR78L35lYop4Eh7Y1wFf95Eoph
	 jMlcXf/aNh/MpR3msJ6VfZcAu6N7o9WYrpdR3FXAKSR1TN+mO/aH0sx23gQ3q/TWnQ
	 Gpv6WgCtBg5x+OjNrNJGzOZURbl0R+3+mUCo1UidoiOUBD+RANPdowtZFx7LbEPFgx
	 vgoQJXTZ6yT/H39waZfZHZY/rL5x50TNhsoHBok+O+er9QnFmW3tpIJXO9Bew81P+M
	 5luMB2wNBh+AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6188AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167171348739.2372.9889598283465764597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b6898be5dc07b55d845a3b3783c53e87ddf164ad53bbc07001dd4b4b33c924a
Date: Thu, 22 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671713487
