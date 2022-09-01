Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88EC6AD6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68078C433D7
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662051653;
	bh=LeEdIkXiLVeOM5Ul6rNgK60Boz3uzc7ZiOAwUklcsXc=;
	h=To:Subject:From:Date:From;
	b=ajslDFEVwy4NOLvgw+R48rK9Y/P+z4FJzcrVExzyPjStOoMJ1twVgI4eFCjJ9QGl0
	 CDQmdYv/7Ozuvsl0Brg/weMsUg4RpliNRQ4SFPG65rpbIiFIetaCzM4cFOQL9Lf1D8
	 mE++puQHyCa0bJRZk9yQIdPZlF23898FeQQqdzOHAneiPjc/PH4j3awY1s+P8wAfEw
	 j7oKI4N2dNRYn9YEr6o+d60VbtMwTUkC05ikKc9/35mcW0n7Z/9BgaGw8wY9USNuky
	 8/PZSP3cOTs13zV2bu8tq4hB5T2lQ5K/MzlGhVGqSegspwP8lFLcGQFvDAWUbLFOV/
	 aoISxNLpHlINQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50420C64991
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166205165332.23692.16591169021533247056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41943108bb9befc73054f7a45e7ebcc24e21f54725341b2b1f0b6f5f81d771f7
Date: Thu, 01 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662051653
