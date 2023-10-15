Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726CC15D4
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 22:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4foa+K2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73AFC433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 22:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697408228;
	bh=IHq/oWBZRJEfKN3yhrPg1bGFpcQvLUOcqFHquHUgOFU=;
	h=To:Subject:From:Date:From;
	b=Z4foa+K2be5yJUHxCmfUmN4KEohWyFomc61abRd/8Booq0qbnq9kTYjQIIBggwMkf
	 rcqRTw1mxuq/9GosRv841R3WsdDhvcq5+k/MHbLndpOnufg0TkaHSBulWcunXw0V85
	 9LbDHz4FSCi+vEi8CU7EcxtBleDDvqhDRCzXHmXeCo3KMsEy5zgq6LbsxS0nLOkbAd
	 sREIsf8hwu+s2qALHj/bKU2YSrp5YaEc0C7HcZOV+8jb7AQa66zd58iKx02fEy5mQe
	 iANnFM1J4WU/ZaO9baHccUzWS2M6GzhHp4zTASxlgz/Js2g8A7/hu0EGWVJyoEGl6R
	 8AgJ2P6Z1/RYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C98CDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 22:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169740822873.438.15639422927315891633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5fb18d590b5218c68209238e7a370515237847b7ba2a31853a6be51101cb14
Date: Sun, 15 Oct 2023 22:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697408228
