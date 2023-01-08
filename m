Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2683C2D
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87794C433F0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673217687;
	bh=WhXdzV+K3AN5a7pChsbol4RWdFEsKHHGp0dXgp96cK0=;
	h=To:Subject:From:Date:From;
	b=eqayg6z4tJE/Ig3aWqOjPBwRgiCATF5VJ+9FO/215P+IUd/F2qI0ImP1E0KcWhdmC
	 WqoXwsHhNB+hENLy7ZZT66LKX2Ga7nfDpp/gK/IZx2jK4vyvnZhmUcEfXvVM8CHI9q
	 N8VIMvEdRuIDG+mvg6MFcbr1pJWjSRPBrrYBpBcUl5D9x+leISKxJH+PnwRIRZ2bGn
	 QkkMgZnGeB+MAeRhjGIwYFXrZLqJZBHNMgBSYx076W+2WQCjGS4QFFeD0Vzy9yufBw
	 299j+aqeFgrozMQ/frzkerWqS4YTMpe/xzufqxyp+hiMlmBJQbH3hWyeYOHXdQOYDy
	 f5gyPeQNW46Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BADC54EBD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167321768740.14143.2544615422479023264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e33231bb42c714cc56200d0ee6b9ca00f721727b273e0c355dc5486ae99cf3e
Date: Sun, 08 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673217687
