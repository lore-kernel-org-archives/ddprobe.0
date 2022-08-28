Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BED2F45
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71EA5C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661704852;
	bh=wkYPyIGblZhc+3gDFRxD+IAa9Qmiq3JF4OlmWEKk/7g=;
	h=To:Subject:From:Date:From;
	b=Bz5ji8LPRJLQnFarf/cdeTbPpJAyN/G5hiikV52HMi6a1HP/x/L9c0/agEja9uNBT
	 gdtYGhTPYWeQc6cT38yqa9peLHYjDqbBNpQDJf6YJxwmJcq/+kyLJxd140I59YOKzl
	 5I7ZrWD70hbbAsaKHb9q/w+Msj19OXN/apG6pUEoh1OMlItUQdRR2k4ECZjqfhYLsi
	 3/FQABRsMX23mzt6UxiBH9l1gRRpJ7mE71vfcg79z9FHigVvwMdxu8kbc0lteBLyW2
	 PrqJGecOrsBUpvwjBLQUegPG0y6IS4miD4R8dOvtUHvaOPuTnZNAGv6UvWtHFyawuX
	 fgf0a6DrDI88A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5711FECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166170485233.29044.15909388196631161326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac76b119f0ae40b61d78f5583b138f8f7d600dbeecc7e0c450514c9a566b8fb
Date: Sun, 28 Aug 2022 16:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661704852
