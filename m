Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C775BE46
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 14:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3967C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 14:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693839248;
	bh=7DRqeDVxFxCk64uz29fyXV4INGocVDd5fPf/BLpI7rI=;
	h=To:Subject:From:Date:From;
	b=miSFou2MebSfwwD5bKVG+aNprSKO/uyYANMI12U1twSbBtn84v8j4zCQxkBBD4t5x
	 jyQjAGY4DTYtPndXRBIkjD+bRomTASJDsFYaohn8tqvPRn/aZIBysmpS6wvSwvZp+Y
	 lXDCXpaVXekwkbqZIpnV/oPQkVVrKj7q36Vnq8QY2/nWdjrLy5pmDrOsQSiKGOgxd+
	 VTT2KEgD7fHlG5vh3eLi3tULfC5tvPC7Yyb7o/hlzrhTyf/7lXOIfXetVxtqzfSpLf
	 i8ctlWM1jfmovg59jrfLWlpb1AACRKkGWikh/I4TZNXQF3P2tssfsfJO/02vOrEfJ/
	 QusZjv0chs22w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD20C83F2C
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 14:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169383924870.20117.1473738611898876183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43690dee9f787d73b4cd301e6ed6966c8cd643fb04b2f04db4f6c6aaf33b4dd
Date: Mon, 04 Sep 2023 14:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693839248
