Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4293205
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F53FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669330254;
	bh=8D/OdknUvT1lkYYBYIyvNU4LJN+QUsLzah8ULAjhBUg=;
	h=To:Subject:From:Date:From;
	b=D9+E/B5117E3mXrwaC7oJU6FUNVDLh3+A9j7rH8h8oZWrSiCrBqCnW2UfKR11alTw
	 YUdgNk9X/xVj9hLb2wn1NMNwn1OoOSel8eTAmyfZvinN+k0D/xh6xo0hF4OJlZPpNE
	 Sw3QoP1JvB9PFLZwWe/E7t7U1ygO1es6KW4xu7x+2W/YPqAYsCkFbSpPFyJ3P7+7K8
	 GanQapfm8vZL1AJa6fAJtSIJ1keAeY1AwPemBIjv0lzLezK/iQjYrx6la53ZEqQ0JO
	 +yT9SwJLil/hM02hTst5k55GYSrl4h9dI0KVp6jIw51OfxAXQtffFtmyxzC5gDBWhE
	 Sqe/unXkkSMVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5930CC433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166933025435.25892.6786474419095484634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e391effbeb89192652fc00e81ae90243cd737905dcf73670fad7a2d4a7ced4e9
Date: Thu, 24 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669330254
