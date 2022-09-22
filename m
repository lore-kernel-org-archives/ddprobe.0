Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B869C2560
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E01AC433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663885253;
	bh=w6alvR6Hv7aVYRDmrhg87abYZqQBlkjrqtDDYSadmng=;
	h=To:Subject:From:Date:From;
	b=D9wEulawap3L0Z6UG0vps+Ln3ZkL5AHgSS4jT7Ij/ulWmiTwcVF/nArD0OnECQhkD
	 TAYyt4jhgpVnVTOQ87VkbLXNy1vM9FPcT9hUgrtGizYZbHpJqxWuIJAgCtlM47Ksj+
	 NOk8T+pZi5Fn4LXMrA7U+pHcdEP6AKCma0CSDS/I7b/K58tfISooPKLyvkElvYGfxU
	 piCT2rJX3Xh4+yf6QfhcHmOd+Ece9WxMnommb4+J39DUpTgGq6w1eZIQ+c2km1LPgg
	 I+B6jSLYkKcR065WaT8UHid3POJ6pO2TKXVl4lVzeoGON90ASfkNsCC2vwAjbxefpv
	 iW4QCDMjuSMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54837ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166388525333.22875.14100964740501464104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4674a3c49189e5cfab2afa2760edc097aca9871e47079ff29b24b283c4987a99
Date: Thu, 22 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663885253
