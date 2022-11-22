Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52A010FC
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7180BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669106454;
	bh=ct8ZhaKK3YSpH0gdegD951TTLi4czP7GyPp1aPEeLN4=;
	h=To:Subject:From:Date:From;
	b=rXyVyIvNkmjKl/d/B4TZM1oz0FZsRiCV+QjV6sUF7sCdb4MCgn9y2qaQKwe7VSF1t
	 oJAi3JVCmRFXXQd0FgflHtpYNtYSVTFH97mmFoSNSLPVzydcwlE7fETbo/DjnQLiSd
	 rRuE2f3hNVY4J/IXhhw8ChwLbRIb/jQ6UuxtX6A/YB6eGeJ8erXpzXBPXuapCJ+neu
	 Pe9JH17D7lGaR5BTDgk7saFOgteGajKoKKPyY2icKGbQqj4iy84MsDCVLxBznhNRS3
	 k/nhnSPesEctxby7jZqtdnGnIToN/Sc2Kkd00KIQ4Qt6IkeVhobO4/y6zCA2GDKknl
	 eJUjLGpe8WVmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A5AAC43219
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166910645436.21213.883163836954662563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93283943b5e610e002c6897f259f32cf7aa7754e0ea0ee236f2e7bd272e6654
Date: Tue, 22 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669106454
