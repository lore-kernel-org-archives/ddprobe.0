Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE09133C4
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719E8C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669562454;
	bh=5YGKK/A/8bCzfV1JXF0E2/fG9oshwjgcGIt3k3tIeEI=;
	h=To:Subject:From:Date:From;
	b=OfhDva0rD+7n5Ak9WfyoHnkjPTBQ/BKI81AGl1lBlW9lMKwR6ui76m1gxd5Kpexx2
	 bWnFvidLUMnM6ytH1o2T9ejlfYjRYdTBXeTFWoNww8H6w6Ln/5IGdsvxoTDBo7BEQ2
	 1SNjN5ym3R4WOboN6TVi8M33URX+MaOZUzThAG1NDS4oVZUN0He4rtNrzFdn3WxREX
	 TeA06G9ufwWkQpH4TrxlpfZg1u3fPfjosPL6ZVYshe7DL35Q5oxJ/BYAat66CqP7EW
	 8y7vBYaY4sBL4/0EI6WyIu/5+A3hsqTm9lae94SeUwTJhW53HODh5+huSHQNVpR7Re
	 XTAFgEbJYUSxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5442BC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166956245432.17687.17101887626355157905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563a4a1bb86707ee9e39d3ac09a238edbc914d3debc6148135e80788a0f2c261
Date: Sun, 27 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669562454
