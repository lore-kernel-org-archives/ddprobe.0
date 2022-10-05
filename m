Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94E13FF1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E555C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664993454;
	bh=li5OiPcWUqNaSKJcvn6GD966GBQ8xrfwvdKJQr7Q1rQ=;
	h=To:Subject:From:Date:From;
	b=FK4c6gyvnaRw/YjG+g9cL5JkRz9l4Bb8rmP4tV2WC7A1K1JzYd4p/OWlGILNRAagS
	 s0fGmjmAF4XKyRH0lRd9uCNsQPvhSKfLSu6qIJFwA/TlpDAIC6b4sbUV0wl2w/cMwd
	 yofnXuAO+iaxL7OwNC44/N0MK90+jaOpoMAdfyPQlvF5+uJoVbZZ5znyM/Od/NPmvU
	 Tg1+QKrT/inWqUMyM9DLPB7pCkOhH2Vfcz98ZLxqd4KDfs13KtoLHztj8wq41pxTYe
	 U7IrtEyESVSiDKGToHVqVNft5h4eIumBjvKXcDobcYiE+DWICOUfucJHkvoAR9jA9S
	 RSDT+5FNAaNIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B9DC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166499345333.7535.5639125192115811146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e534e1e3063b09c976578ecd0f447cb382158294614f7161e14256da426d04ee
Date: Wed, 05 Oct 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664993453
