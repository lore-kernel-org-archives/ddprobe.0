Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23FA29A8
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7811EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668273054;
	bh=TwO3q2EeoGuOH9sKfYAkTMtiuKjKFS2SDsGGThrX4Gs=;
	h=To:Subject:From:Date:From;
	b=dKDNc1UCyfKvnb/5oZNvLm07cgbpH1xiOp0xKDWuXkWqN6st+IX+ozPE5JsKGV35F
	 TovrrmIeZ1l6IQO9huQqJUmh77VdbRR3YYQFdgRCE1UyOQ4a2DZO9/0jefSH8wo+EK
	 owDmdOS4s01ZeXqI8D10z/mbLMd6ecV/Af+ZtX8AOwwTpc61PnlZllHdKQ4cetT+Ta
	 tRXprMQMgpItzMDxg6sfxKsS+SRTPnasQ45VlyfzAA+QplN2OQjf7nCOFaNugSjvWK
	 mfJGkKOR5C18FSPvTfPBjLq0S4naXTb9Sed5u0oLDqMG0suhfc5+/Y+HjFUs+tmI2J
	 i5ZGmTzFHKt2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C815C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166827305435.25845.12058194996788939941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2bda26b1763421c42b49ec1972b5c623b2362abc819232842fc1556dca1e6dc
Date: Sat, 12 Nov 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668273054
