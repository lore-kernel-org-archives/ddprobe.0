Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92521C32
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 709D8C433D7
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665298253;
	bh=1TWVF5j+t+bskGXpvO5QAbY5rpFR4WfpYvU/dU6e3Ck=;
	h=To:Subject:From:Date:From;
	b=lfDRtTvCN+pkxymo4zg2WwnoaM/XMQDwq1HP9Dy7P5rCVZaRze0i9CH5QR1I2cMeY
	 bOGZuB37kQNwmdzMH520mlpUUwKi+QQcFwzVY0Hol/oLZNi/pLRGL4SKylATL+98hF
	 QQm0bi0rlJNYKLY1d/Y/DQ2QYiP7AOezIhwAaxxrSvU7vq7ERDubTiH/ypCtsEqirP
	 iways0NdWMk2iDA1QBkhFXZ7fug+GisVk8XsvBr3GxX9lHlb3Z9jTpbtZRcQeIFBLU
	 9wbxpPC+9XVdef9rVVKz/qfFNUk1Sdwez//jYpHLpgqHfghe1WTOxX7WbTUqx6pQT7
	 /T0k7xxkHRzOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53625C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166529825333.16318.10404848376925290040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af239ddf8260318e35486fe0d4bfb5797239a3abfa26b266e9f097ce336c847
Date: Sun, 09 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665298253
