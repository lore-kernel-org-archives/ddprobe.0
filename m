Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D881918F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 865EFC433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668803454;
	bh=850a8s1ysuEoFx+kms/JuKhYFISWWPW8FKlCnib/9ps=;
	h=To:Subject:From:Date:From;
	b=PwZX5NzeDLuga1NL/am3pfFKq+8Bv3WkAwjAy/hvLEL0BApLmDlEByuPEUkWCQ61h
	 qy83kUiokwmjffLtWdWyrVlUHYOvb6xiSLtAOgR8GGXhUZbkFOKAXDChaGu4YZF4GC
	 e7OXQAhlGJJOcwatDIbS5EeWcZEvtfqzg7pITSs7svqYWpQ5TciMEvmBCPGhCjRazw
	 b0J/3CzDYQGsBZKaeAWcn4ptTP/RxdvEEJhtHiNwHMLdAc+HaaAwWYjmj1TFllk3Mq
	 PW/J1NV7NUE+cNlFUOaBA6wFsifdm5HlHBZRO6NlrkejCmnLwAJ4HQG4KvppdlCuGd
	 raI8NCX7UkHBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E8E7C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880345444.15442.423643995537550476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334720fb5aa3e811a89bb753f48c8a59a1fbfce511d1af5b10958ff64506c95d
Date: Fri, 18 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668803454
