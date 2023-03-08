Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D837C
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 02:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8E7C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 02:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678240865;
	bh=8KOIXzQI3fWQ5EzSyIYo5qxMb+HZil5xJfWkvXdsYfg=;
	h=To:Subject:From:Date:From;
	b=bJAcvnjpLg7UOBlLNBrzVdIZc0Sr424KFkAiqguz8aqHIDggjNJOwiLQ1t6IQKcOZ
	 Wiuk3+eB+k9E2Oh4xfa0T2N8neo3XqEXCybHpTnBm33p74slXLY7Jkifchnmn8i4tf
	 XKUwZG70YYCayjzn7Q0oNcffQnsutsi3EVaTttzNfvhIVa8ai1o3NA2IMLjOT6enRV
	 +CImxw+mS/Rj6IO09NMxJTi48eW8WWhbRjlHaIPzfik9qmueK4PUdZ+C5MtjVm1oa1
	 arY+kfxpRaZFxCOURLaXTaxSHUq2AvnjkeSf+2x0mP4AmJWl4B9lO3bSBRMgmbn5fK
	 xMRr585OfeOmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA219C678D5
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 02:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167824086575.3446.128602901705610462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39acac4af2d7b1faf6fa0cb59754a4be05406b2f8c5b654dd2e5221bea7c5aeb
Date: Wed, 08 Mar 2023 02:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678240865
