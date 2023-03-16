Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8A4AD32
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 21:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF865C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 21:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679002806;
	bh=h16i2OPn5QI0Ljdrc/10fXavag42XsYO1RyolyylMMo=;
	h=To:Subject:From:Date:From;
	b=MaCGsAAY9JAqOZJSG7J5iMFGQiZbCaRbuU8iElZBqVqbT1rP08T1/3j9tI+97WYwe
	 87LqN2o0GpNCTwmXF9+BHVEBunQxcmhgVb3oPwxXut6mxlit/i+TpwM1Rf8ZV+CiZD
	 ilzK4G5qemQBIEqALvnbxOR6dvSgmJe08OyjaVM3TPuLOEa82m9S+XH3HgXAA1cwgh
	 /P1/wEIywnBmqWw6O7T1AL5UAMHSC1Wc0XWf9t0xgHG3iB1aBEAdZFTnsN+7r0e6QA
	 WHc3M0+o2S053K5keW4qS0VM3gKHUCcM/YaHr8Ewdem9gighEdoFgWL7p2kJH0pGYe
	 Lj/4uX7bsjXsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78FDC74A5B
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 21:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167900280578.30255.4175471685323269140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c34d2a25480ede55a13fe5b58c093c517d28b4863e81957491eae172523863
Date: Thu, 16 Mar 2023 21:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679002805
