Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D911FB6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CEFC433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669275054;
	bh=6z7NVW8JUC1GT15uXVuXM1kdC2EJ7m/1XDymI+h22Ug=;
	h=To:Subject:From:Date:From;
	b=fpjveXNp2V8gAYl5+FnASmUCm5PN4YWiamxzauKgEMa0v1P1he/6FBdNtjSxRFkma
	 RRIyn6hwdCCIkGVMk6AVNk4UdmuHAT/AqAZShkGnMnsH0kPsMQCNBGKL9rYfEsET2y
	 7x7ncQsOEjCCmWY43zrOaMVyKdd/KhnaBAlZHLTIzVLNPRafOJaXq997zJHiz4eOt+
	 oso44Tl2W4hsZY10VGn7Jwd5RaEBZcP2WqXEWv5EqSsiR8hrhUW4vvGgCmlf9d8jYd
	 /tOiY+KamwAGW0ycuGJvjCp76Rlj631E+lc2OOpcRSWGw6fSnMkBEpKs5dYFArI8vd
	 8iXvxne98JpbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 582ADC433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166927505434.9937.5114401587128483480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e110201fd683847589161201bda651056f0b2f08145e0f74ef75601e463936
Date: Thu, 24 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669275054
