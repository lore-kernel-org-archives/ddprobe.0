Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93C4EC0D
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ECDFC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668900654;
	bh=GYOzb8NH0AtYZZDeGpg0GbQ/N/IgYnaCIpCWpquwcQU=;
	h=To:Subject:From:Date:From;
	b=YRHjlKkJ6PnIbUBv2emHOuqHEiADtNA+/wxH7DVZyB8LXxSRHcWMO74L+mQfeWBLI
	 OIa2wtJ0lN0EESvkP3laRcdho2qOj+T8b3GWFFrQw3XEgx4j3WFsA1QN8Z+/vrS2z+
	 HgQGheUOPbI9wbnUK4pcbVS+hBB2a2fhp1j1ese5qcMMaHETgO8hJN4tlCJgk6D3Eo
	 IxQrkRxJR9aeMQwv6smilE+quBoZK3UO81GAGyfM6fYcHIqXgqJfQ+VQzCPo35xT1b
	 myRqhd8Qa7ri1laAs50UsTzf4B0zxARB05x46FqfsJH3z26sFn0JSyKybxABYHHZjs
	 mo1Z8fF8ibYHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602E0C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166890065434.28344.14311396541345858965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c02820f26a5bec8980a5f715a9a699ffc2fe3f831c761f556467733fa00d3c0
Date: Sat, 19 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668900654
