Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83281FA7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79520C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664526653;
	bh=+qf5zYGe6Ni4sHAO9Zt8JHYncgZ4sjafsLWmOhFosyE=;
	h=To:Subject:From:Date:From;
	b=CyDplF6Imz5Mr7OfJ0pIggqvmkLIAqgrmQRXdzEjberXTu/PGdru6cmLkpnvX+IDV
	 MTONmr+YzpprDbj1mgGe+dUAHzkd3JrKRcs+0txIAK4jwYCaoh7ihbZPFuZeht9ZcC
	 kmcay3CEZwfie9sAAX/40gAyVo4JYEj9c3tXZZUk+omZl/Lkj90u9VUwUWUaeWmm1o
	 pVDfsC/ommOc9Wgq98/ei7Y3w3D/IhPbAeJBQ1IyFm/36OdTHagTT8Tnmnx1N4ZXFh
	 1opK/oahCCCfPINn3JyqsbGQAIlr719hOV9IfCP3VIqy0Ahw/Fo25lD0XkDYRIrU6/
	 mHxlMIL+hkkGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 556F3C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166452665334.4374.1877352367164580932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 810d5e72a0fbae79c4715b2ea8a6114fbf016d579986f35d90006b0289d6ae50
Date: Fri, 30 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664526653
