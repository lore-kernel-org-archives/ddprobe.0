Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFF92563
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB0CC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667805054;
	bh=MNXjUfY4JmetOlZZ1PVPpDBGYenXNN/LTC+MwwMAYPY=;
	h=To:Subject:From:Date:From;
	b=qIDncNkoqnvib3g2O5esjIdMu8RAYje+0wuHt4w3tXuBBZAQ/pz1bSOtI4oypQlfP
	 8uEd+DTywuasICmV5KNGPEEkXZ+dlBSIX0wANx4Gq31EA8WNLN2YmaeC7G59N8tIDh
	 KHZJdXbOCfN4A8JzpK3YXU/s4smFW5X55Wpm9+R3rSBGyyUhVgwzlIBRa6DG8JJW5n
	 rQ+xVsZv6JhsoGRjLr0uXQNUDhf2F/4sB3dszNfXOlieKDwnxlBrW/yDwLliShzfAQ
	 8DwX5US9x7YVgbYHdXkh5jD0fWkCXBCpIua1fpwJU8SdNY5gi2hcMDmR4N7yVoyD7m
	 rq3RRQlyE8Bsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E155C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166780505431.18690.10437377636750728146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c666cab3196109dea59f41fd30e6247081df318eecb6a44704289100bd9b18
Date: Mon, 07 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667805054
