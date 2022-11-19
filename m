Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53CF381
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2A9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668866454;
	bh=ofglk6vHRdlAp2SuHqUq7h3tT/y3brTcvdY8G1bfHEI=;
	h=To:Subject:From:Date:From;
	b=CftVLWQS4lp3RzbLgpgn5NYVFab69V5gv2HEVsjSSND61uUsxbWfwqJiqjdUGHCLY
	 IhaQy1CUUMlmQVrvrPYQYjFPRYyexIARwcFX6Kkd8KOrweKdqfYhpaeCLPUAdHbyCH
	 vp6qRyV8D0icWVI26PdQnpq45VJJmJaZyMWKDzlceVBbYfdywUmUCeB+F6RwlxHNYz
	 4bAYt2XxgfXKHbcZlIaDTCLa+qX36axgjKdjP78JFVwFRHAE7R8aVMAG79A3Lvz6XA
	 CduJ7+5uVLREkxorO5tW1wK9iVMbldoStqqxWmv3nQLhET0eB1Rwhx6Bj1FisaRAWb
	 ShyJ413AdZp7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61737C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166886645435.1970.13566864842961762988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb5044ad0b0d74cdba00024b3cd8c9f59fb0a9adeb591023524264453739d8e
Date: Sat, 19 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668866454
