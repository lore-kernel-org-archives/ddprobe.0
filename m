Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE697C
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78491C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671064887;
	bh=DnO7pptmaJzQgGYRZ/xCxmSoi57Gzn25w2ADverQCL8=;
	h=To:Subject:From:Date:From;
	b=eW4qaROnuZ3h9rYALCKqomCj57C68rLLB/1P/xH3pzHaa2EtwthSZtBAyXib8zaC0
	 GoNWE0DIVii32OWu2O2cJrsv++PvXxy4ZDBoPXL0PbA54/UzuLQl11onAKDcU+hB0k
	 GmZNoxF9ExGiMyEhxkeSR9QppKuxpYNGzCB1kTwLQwI8d7P1+X+26xs5zHdrKaLg5b
	 ZJJznTXhWzPcQbhX0ZyasrIV2XpEAWAQDrZo+QNxdtLGhGj0iDLDGO0ZWySTi0CZiV
	 x4/m2Chyx5PRFgJRE633Nws55D4MUziNo/+edCoM2tMwvaGBwYUTDUFeI+IdyAVyD1
	 GBzLvW2C6IFLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEA5C001B2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167106488738.11889.17738998123475029847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e56db8adec00fca0348f66d9fb62cc38f4181a35786b08f1a2a8b0deeca267
Date: Thu, 15 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671064887
