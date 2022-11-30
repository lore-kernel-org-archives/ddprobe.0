Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BEAA29
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B313C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669795854;
	bh=UdZuvILr6WlBKUn9xWul+cd0keuPbOTT3rfLOLrfGnI=;
	h=To:Subject:From:Date:From;
	b=DM7JAuYK18HL4DOPQNKpRyqjfARf6llShyjUrq81wzabeJPGFtlIU2mgXj+9wWuDu
	 eKHmdo+cHXPBnuw+nQT3hRFXUnX+AK3V9sAGMFO4BZFr8VJnqNva4QvEB0qymF16dX
	 v5EGJou1b7gN6tEB5rLVJgirAruioC960MlR9UA1x6x5faNXyTK+U0nVEbbmMiE+34
	 qwjC+CgSDgG9uc6pzjRU4/Rheh+4BhQCNHvAegJqDzieG51+NnmJZkcAy6En++Qg17
	 qYEUYiVEN9UNGtOUAVMkSfs2dMg3pGyeOInwNynMeUz+9ZUaAAdEU9DPJut7oDyO5l
	 rbqD+Ju/Yjh1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635C1C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979585440.27071.7778182965602800783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68cc1f6828aa2018934c0ad800eb99da40bd714d90ca7506fbfc467cd15c033e
Date: Wed, 30 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669795854
