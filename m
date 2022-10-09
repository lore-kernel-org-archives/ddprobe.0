Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A0F1C2E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F061C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665357653;
	bh=kx4bl13hcNVZjDDqCjviGeQ4eKJKGFiHC7+b6IWCjuM=;
	h=To:Subject:From:Date:From;
	b=hkHqutDylD3VxA/4u87bXrXzkJcAQaPUwBF1TGx3XgB/8q5e2USasSbMBRrpQjI9+
	 zeI+Z5UBrR7GsxpX4hznql+0fdttdi1H/IM9aYX8kqLijd6eOxZmdM5Lh7yco6tOhT
	 iiyDUkvGcmuxVQsj7rjIXwGsuo8el3ZXbUYr1cuWGRzGbeOo/r32qxFEUwOdAxV65Z
	 8oW9mXLql9UCZkZbnOA/jYzKYdcqFlXODNow2egtRygyDJvziDsqIpVrL0h11pl2HK
	 AtPWF0zXba5ehtJ3JM1utbzxLqert2Z6xCdcifJDbagfy0dX6JXNwb/ARARbwZfeWB
	 p68NYp1QDWvIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56161C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166535765334.16827.12477101643165653728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6badcbb2327acde69888ade743893690abdc3a9814d55fbae193f219673dc7ee
Date: Sun, 09 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665357653
