Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A564D79FA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 15:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44D9C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 15:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688830028;
	bh=kGrY/rGGQH/EI0PgI03vM1QFMW13CVCkgSqMftB4Cbw=;
	h=To:Subject:From:Date:From;
	b=V7lem96JUQ6U18p6YVzdcQIdK+NrGRIXTg+gWbRQWdBwJLm0BWFHZETVOIbXg/vKe
	 UDNPwFnRnZ8bQ4a2upGGBlkM9bxqvNGXa9opNSrjRTQ6IkAeHJ8xGMwm2w84lzuBel
	 FWoII2xexG76gyU4NalvEWtc8uXN2LSWITU6LEMSqr0kIFvauwiZFVZGtPT+IlEU9X
	 wxlLQbBu9Sjl28c+400CHNnMhuxtxJaVd7vtt8meiIXBC5oXgCuv2iIF+LIU0480gD
	 N6C0pllwrW3Bm44eVNGPyDdOPtcA+nVRJXX5QVHlI9dHyXaPlu7xFlUJLZq/C8kCkR
	 fK0iKytenz8yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99E4EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 15:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168883002875.29828.11868146832154952786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3b19715ee1146606672dec335bfdcc3cc74b2606bffffb767902ceed3ef5f5
Date: Sat, 08 Jul 2023 15:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688830028
