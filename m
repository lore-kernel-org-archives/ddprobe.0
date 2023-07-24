Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C48A35
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 02:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBECC433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 02:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690164728;
	bh=eHc2SnVs7CPPkWnmopRpDP5YG5UCFfIpuzSRJ8GE2qE=;
	h=To:Subject:From:Date:From;
	b=YVnprZlFgPhLghGf4Bu11Csm6hfQ9eC/UTyBYiZu15DmqYNB8fWBu5ETrF4stvcMV
	 uNjrU8UEuqeOR/hUmflyIlhY3JGVjlrCM80q3V2iwLcgNJD4YyiVwaEPHUD6drQPUl
	 ne2ZnkEing9v8Ec1vLScjZko6+NOV9bxmtURARhqwJLkP/Br5HtdgW3dfUcRoPuV5m
	 p0i452wG4G124IotYcIFf3Ipp/4Vcsp6oPNQr10aggk7fTtQ8cd8syBK9Hsc8OofDY
	 yzjMnahgzudAuBGxTU7Kk3CUhQfu9Gz4uL5euomYKoS7uYHNO9N6TQO4aO5ulxLhiG
	 qZEocZQlgzjRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4D5C001DC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 02:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169016472868.16852.2280170024165249879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a0b0b1f918804a55ec70fe4d9309b04e0d53fbb5c51df9a1a04db7ff231e73
Date: Mon, 24 Jul 2023 02:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690164728
