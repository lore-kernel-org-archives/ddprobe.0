Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2941349890
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTS570r/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BD0CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703716696;
	bh=j782edrv3xfv2BrIPLnI3gN2b0js4yxDyjtIb0INxog=;
	h=To:Subject:From:Date:From;
	b=pTS570r/5iF4ODuqkXMMl8cSg/wh74jPrJayl38ooFaRz6Fw5mQcCzLNaS9HCiAuJ
	 7wy1lT3Z/2TUu3Sno6z/OMemxWTtJ1o12AL+ifYTQi0je0yrs6HMJOo5r4GxTfaS1x
	 kIm0fFOoYQtry7Ut7ifE7FhtZB4drRicFH4zmTpJqT58EZyCZaDpHi7rBr/CRrvz/y
	 4c9uARZowxyST18DQyuRtVCAwHlBc4CA0LulSWyu+xUSf5ykdZPZTzwwDtfO2IOgPx
	 Y9E66VhbPhGz105ED8JvaCIbFg3Qu5qfEh5P7nWOo3eUhpd33o7Y6BOtbbxYpMWto5
	 64Qd4JNH4U8qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675F7C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170371669641.17109.13931998463369271670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44b289e9db6572e80b0960179cf66ccba03a17d15663f98ae6bbe37cd83d0294
Date: Wed, 27 Dec 2023 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703716696
