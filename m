Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBCEA40
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75596C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665988253;
	bh=6XGGOGOxHFuBPvxM8byx+p7Q4fYOThntXm3Bp651M6o=;
	h=To:Subject:From:Date:From;
	b=TaMuPBKG6h5vbevAUh7EMsQ5xpifs2qns4CPkuwRBjXbHVD7VaA0bYbtG9sVYXmmK
	 s/74gAVi0F6xkEmP/rkNZVGqqzHq+kmW2YkuOVaEQIz+L7Ru1hFFgQc4i8vY746Dli
	 sIUiFSRYk9UeQfhWNqu6XNtedXrxSfs5EkgZcSO/Y9Z+y2ZnPsaCjk9aMEA/zJawB1
	 DZA28xjVzJqSOT9EkKoEcACg9fiTeiuZSbUl4+G2OmwVj5qyrM5CQKxFZTmj++3DYt
	 XIs+Rc/mGggR5lcUyVNdQfb2hCBKhPBMN6QMbbaLQ18Rl+25oBK1bamfQCQo5iPrw7
	 pVeNrToYpR3gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5910BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166598825334.27300.13673214137467898714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396b940ad026678dbfa693046169b655fcf6b38137718cda6061eec3386b97f8
Date: Mon, 17 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665988253
