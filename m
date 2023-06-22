Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579143AA8C
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 10:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C749BC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 10:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687428788;
	bh=hW5xbdXBpHVzSVl6bybbP1NJY5UU3MUpvRBGqLxu4Kk=;
	h=To:Subject:From:Date:From;
	b=UZgzRAFM5ggzs0H3WD2pEvy7H4eVb5Q/DPFJjYdkDY79jMgWRYUDIJtv5vo6lv1eI
	 5xqg1jMZyFYpRgoB4yZalB7Jc6w+BTiivqbH1TcuWQHhpbINAtf82XeOVylZLpwxAb
	 aR6tkz/kkLWtamMhM68oiRe8XAxs6M4lwl/NH2KADpu5o2vbZFrJY7QmNoQ/MXmuhH
	 05atbwIGbTCTfexPF3SmDKibgcQ5XD8EBjeNLA/XDhc58v/+MS7HmiOHyk6nEkvd40
	 uqHchD9kuigDOOg7VULiE8KGahnDNmBggIHIv/g4Z53QPasTOAz98i5hqCX/+n6BMr
	 6aMQDZ3MGOdTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8F5EB64DB
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 10:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168742878871.12510.252564829855268515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadd370737f0b4ccd1ef8c86924e6c72d959e2a76db2aaaeb2087d6c2597af2d
Date: Thu, 22 Jun 2023 10:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687428788
