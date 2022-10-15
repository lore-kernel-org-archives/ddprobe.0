Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86C92F52
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B40AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665864653;
	bh=641aA54wUx86lths87ILh42CDzE+fvB07XNzXPaNkEM=;
	h=To:Subject:From:Date:From;
	b=LxPa0ABqgbZYJMIOchmFPN2/Ui3NGdWXYGfpjWo2civVEn7rNu1+ZvqM6M8U5RIKI
	 5ks2ZwSOcD35FcVLszCNuDpnNUD1Ef91SGohbdT+lTzvg+nBgvIUBeMcsiNeaSnE7K
	 aH3ZcCArUucNe2mCvYxdWQtSOAacmvIqxg9zzvlS3iHXetEI17jDjXHtLtercDtwwr
	 i/wLM2Omul0GE6ZyvSubvswrR81xKxnYm1ZJ1U0nHPInNIqC4+aDMrxm/Hc7bb6/G2
	 3lwMwSvFZPakwSl+jfGgDam3deGh4CMOv36t2txAmjq4dvRZ3tuIpUpujerVJKeHMx
	 mCvODxvwhcC6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F225C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586465335.4964.1571743437655881488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89acec77437bced9bd401dfcf619725f4ad09b3d4f2b705a6218981e743444e6
Date: Sat, 15 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665864653
