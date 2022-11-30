Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A907C
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A05C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669776654;
	bh=zjE56AMOfNl/v72sa+7srLgE1IGePuUyPIh65/rG/U8=;
	h=To:Subject:From:Date:From;
	b=AUOeZcaT5/N6Pdt5K/yucguTJM4tMjTO2JrZsH0b07AZcjfO0EHBqDQ2qviEKaOoc
	 e/wf1VJUDomNVAJQ9KLDBrhvpOUpRdcYKr1as6ECzzc0Sa3+qQPRzhQib0MhuRPf0p
	 eDfr8gsKFR5OvZ70fU5zcmNNHdObxqAatyw/2xio+VE5VHPjfAnu5h3Pm5m7pefQLd
	 LDmLjXl3Yk+bCrG0Xy2NDOXWXVZ58qz2x1/e/vT2fFZVrxt3gym3D+mk08lQscXVEU
	 4uq0LIXO7IKXfm27z/jrLKs9BxXOgvvyBmkVLFRSZn1deSBdYLEkQoiGTgR6oFer57
	 uSEYgTNUMhq/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DB2C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166977665434.3624.11739971777492126445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1ed61b9fbcb5509de3684174d9cce0428174d1edf11c7213b982fa199c1ec1
Date: Wed, 30 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669776654
