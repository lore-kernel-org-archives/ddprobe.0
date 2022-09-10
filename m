Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD192A5F
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CEA2C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662842453;
	bh=h/RuqNy5DHF5G9IZx3Gn/2TYZfCWwSeDKcAhY2cnZIY=;
	h=To:Subject:From:Date:From;
	b=MrDw8T8CDG5wJA3Tcqplb4bwc/iet9aNOIWjIR0lEZKgsP3M+ImJn/nJhNoT0aqfQ
	 t0bHX0OTPl7eYp5S88J9uR4vSnHGXvu7WU7nhOoWCdKVAKI5j1yWnQ+Uzfgfti4E83
	 sG9Y+dIlDza1rH3Hg5d4X04lO6OrsV4m2yN0ujHzSRfSL7bxd8tZlTjtY7aHuEF/UA
	 jNbUg5NlpHmnKmcKrebB24z4gtskSvhASYrftrqjxe8ArLr1bs7TMpQ5Myjnx9JAjc
	 0mG6W4L91GMnTVRkN+d8Q5nBmcgZULX/c20gbec3rRFlurrxLsZnJK6UKILFpzxKrw
	 jNlXkpgZj1eaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E41ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166284245332.30101.17935464225221810856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f751ac568b5db1552448e8b48c2d056e9e67c5b86d6dd34cdabe4caa6bbb85a
Date: Sat, 10 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662842453
