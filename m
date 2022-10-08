Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3867E5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F76EC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665191453;
	bh=i8/pUbwP5iP0HuCPtUm+ZcMEo4Xd9WzNYyfVtFRfjHU=;
	h=To:Subject:From:Date:From;
	b=lBf2I3Y1zwP9xifN9aNpFy/+jZ80fog236tIBcsZ4Upez7PpEVxGTSOKXEZ7j5zNN
	 V5gZ5tpIDT1Mk3LJArlp6mM+uUc9wk2GXEIqhtqQATKA62xdGzKmPH6EZM07wSjtRe
	 6uL+g0YCeq/FTNYl9OW+u23GW4RfsqyvLouXIF3A01UUiqJmRGLjuXAd9QQy5JNpgN
	 yS/MA4iCFXabpsXo8SLu7tyaxRuzU8UYx/enc1IxyMofrkibhNKBPJ0TMHu+gVUAw3
	 IdROLjiREk/qeiA8Zo9VEkfDE8Foshr/W2A/eSo3UQ2w5vx7b7tz2+MR/O0OpG+R3D
	 qDom32HG1g0IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611E9C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166519145336.7981.9617813383689608508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4983eb27a8642e1c92e9d92dbafdc64bd2569814a8e97ae7923ec6a79302f54a
Date: Sat, 08 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665191453
