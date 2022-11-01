Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C352820F6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6807AC433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667313654;
	bh=UrpfVOpJjuYjt1Qu4XXonpOQrau88RIDT8Lg4QRbo7k=;
	h=To:Subject:From:Date:From;
	b=MONca4IdhLGKHxZffB/Cvhx+CQkWae8jr6OJc2FAh4vg9XU0IlGCQK3A7u/uZ+UxE
	 xbILmQ2a+QspSbY8/UXTBdXT5XzYEVJxZrilVcQ7j/8xLaDCINJk70KsnxOmZmDdAR
	 Npp2gdlejZ88REXBwz5HtgeX+pU2BYbc37yp5LHeTtxiv/wVf7xnZtH+9ecUUT0fsb
	 Qo+iWPs+xxTmPMqa/6FlhIrW+qyaJk4N0yW18lOXtF8CK77ic31up4y6OI1RzYjVNc
	 Wn+gk5TqVqXElA0Bvgb7mY+U7vmYfyQnoB7QLaM6oTshXCG/rL+qHeQdWdBzstcLAa
	 ZMwxU40CmiRbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EBA1C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166731365431.1603.8789562218375226190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4dd4069fcdf0060046220c0f494cfaab71068aca6d9ab3e3b0c15cc522ed4b
Date: Tue, 01 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667313654
