Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A5D632
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 03:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99EBC433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 03:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684555085;
	bh=AnX4ydQBnvVOlUArR3MdCWPmSZIBCtwgd9ScYa/ZHrE=;
	h=To:Subject:From:Date:From;
	b=QLlrEzHylMSC8yb8guF+eBpHE/PZgGw/OFrP1hJHxpsDdSFUaiPwVD8Rtjb4DitOu
	 NfEbeSygYEycWZ6qkjE+0kOwcIWCovrMV/Evfkk8+vzm3bbH7ExBJOnXq5x++1kypJ
	 bRl1sgvA46P8BfaAZDunC2WJ4+ZaG9ytXcdwsCwkr0GaeEEOI6aGBJs6q4ALSHDRZD
	 qDwz0KGfFVpVtsRMGxiLECV/AWxTJtIh2S8Txpy3lIgNoMLqjBTCrx35AHQWoOUX6y
	 aNzz0kD3ymFcTkleuY96y4TpMQo+5137KqlRIMHeQxGpgUjO9+/3rpb3nNhIRz9WaT
	 FGp7bFUeudtBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEE1C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 03:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168455508574.5131.3233468919892367616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2fa256724afff369fc795f2c2cae500d9c03c2fe33e54f744b716caf117943
Date: Sat, 20 May 2023 03:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684555085
