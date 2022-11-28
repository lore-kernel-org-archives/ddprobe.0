Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D2B3A498
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B6BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669671654;
	bh=R0YRX+HcgB/KNVWobrB/qpwkFexdVgh4aF1ex7NYzBY=;
	h=To:Subject:From:Date:From;
	b=UiTzqdLecmtJT7LUmT/1CWcxfh6qgdAPGe3cFi1ng7NzjRTlVOl4EQRnsExACYkeY
	 8eFu0145Oim/5BkH1Ey+uZRYH2lCPuuKYeJkf3cTv7CZ9w2CoLHuUkZztvZgP6pwuS
	 b1j3VfOo9om3MG4s06sqmmjss5BiiCeJtIE9EYRfS0WDpzoFSTC/lWzESL4WZf/WmM
	 zcON6BdPHM+wk06vjU0ZmIovG3nmO4qwxEB6Rl+NFlesU/P/3Buyzhor+i/sMW668m
	 stFlZnz/E9HldHOAniKKqyJ7WxXA4I0BLSPWr3312LlCHDqfNvaWi2uF9uPPlvweHJ
	 ubnXdUm1HYiBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529E4C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166967165431.11770.15115811609678566885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9cbcd1ea54e0a0c78c15eb5f6317dc1110564322b1c35b16424354d3c40617
Date: Mon, 28 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669671654
