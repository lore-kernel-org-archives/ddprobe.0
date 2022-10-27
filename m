Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6101865
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DDE7C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666861254;
	bh=u+7+8EEpJBUPppJ+tq4R2nhOAA/WujPCPKECycZqCXY=;
	h=To:Subject:From:Date:From;
	b=LkvytuU6rx3gQjKZfaoy7PkoAK+mQDDA8GYBfIb6AozG7Me8MWjBF313PPyibvOiH
	 RiG8vEkJfmSli3lkY7nh4GzCYdjkg5XhkAkXZ7HrGSQMQw+JSlVkbrimBhJ74mkjEe
	 8/XHKykr2vgk5ZMDfNO1ujGNKLJch2jkQEO6Cp4rGdmLVrRV+XG0vMysCZBEk50Ght
	 6Wb69WUiLyPN5eOewpta2uLfyJXtsPqZ/S7CyNQxvXQBvh8LWWy/yNEEPYIZoKhW05
	 LJwEf3vbxZBzJJ4wMJ3lg5xeXzajIunlKQUkOxLFRcr5c/siqaY7Y/xEjbgEJaxPta
	 U+gOxcJKKAbRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565E1C38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686125434.5037.9763865137193958555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6c529a176dbd0e85987b3aef9d0e17e63a34d2749c6ae17ef4c90764bd095b
Date: Thu, 27 Oct 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666861254
