Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B0A19D
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 08:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42AAC433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 08:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678006625;
	bh=6IQInA8OPu4wz4MzxXxCKGGG0JMTwB13JveUnUnKWug=;
	h=To:Subject:From:Date:From;
	b=kTRy/ATuyjRdPaTG88ACnVUSvZpUHX5/YYAVUpAE4RK+zs/u85r14brC8ldrqKk/I
	 iQRpz8qDIgw/uDsTT3w8Osv+II3rK/R+tvYKuIHD8FsRBMywBYsKypjmUTXbdGgDS8
	 yv/XioEJD3Ry8LDolxDEDsBh4at8uzQj5wFN+XSD5/EJxx8pxA+eE8Q97y3NXoOyI5
	 w+/mTeOR9OTb8s3PJk0Ie70bVot0nd/a08/rzf1BUoJ4Vj6Iicv+E50dmV8GobWBfK
	 EzHnKquWWpSJy9VL4MCWVjyPKbj+ccM6zucvFBT/HhCLVI3169Wujo5/YuFE+R8sJo
	 ewwyIFkVmdMNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE8CC6FA8E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 08:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167800662580.31401.6203427166104262143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3cb2b55fc779bdca6f62c1f01eb0edd626db1ca8fe2a89bddab4cde2c447fe
Date: Sun, 05 Mar 2023 08:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678006625
