Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332DA7C
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 06:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E09F1C433D2
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 06:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685255945;
	bh=ZgkR9ZoaKGVErY/MoLpXJPWbzxbyyNLIYkiQZL5VKiI=;
	h=To:Subject:From:Date:From;
	b=dT1w74WVUZMyB14cmm5wYXEa3utqpn/agijV10egKbXliT3LF3ZxuhHcFqwMuBhkX
	 YKGI2sumoYMbAaLtLjnzrYCEnbN76+WqIslSG7rppCHuuvAM4ssLnyGLgzJTGd0m5N
	 QtyZ18NqL6yIAGBtit9OQx/60fZztrZRggiJcSxqD9OWZwtRU/6o7NFOHDn7PfhyEl
	 XTmxbB1GU9BRiV1dn+LJXG2B7LzltoaVGpdLAQpCxXefKuRdzSC+JPZE4EUm5QfyGT
	 HwHBWFACdeUD6oNk+lo3lqcgzP5XJfFRw/kV2C2H+i0ocNUT5uZcFwK4RwdyR74Pzx
	 yA5wwy0x44J8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF903C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 06:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168525594577.4748.4387152353922350128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e69ee8a5888b4f16430c3a06085db663883505e41ec41a0c32d5fdbb2c488c
Date: Sun, 28 May 2023 06:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685255945
