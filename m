Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17B5198
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CEC8C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674183687;
	bh=sJR7ZtUrh2P7hocIz4xRANqTqRfogHe3GbV25hdOziI=;
	h=To:Subject:From:Date:From;
	b=oMcyMtYhsUu00TFzubNTeOpdazej1B3QkYITI2tGJm3QWapm4xgQCi0GBfwri+rka
	 LiXyaWmF0qqVXggXDnQ2VFteC7r6txOY8jXQRmDDRK79F7pj/9n42MzcBkLJcGhwxZ
	 MJqHiIr+fIhBz5MO7lFohugiPn4w8+pGfnat7aoadwdpuY5TwJLzNRaoaj8cICNTxu
	 oqeqrEpXpnR9HT4TzZyAxlTI8IM9gQnS+IRCsAjfpIXbqrW4S9fmXSUq/FMmHr0Sr0
	 /lbWR9RIgcNXkM3HP3TMvtWbTThp+Ep3KGXdVUE8XRDNAAdspqnhDpiju+DRwTHjp8
	 RGi/U+x2agR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D5AC38142
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418368739.341.16805916707866249926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9902af01069d80965559e99611ab140459a568eb3e0f7fab103eb368465bc0
Date: Fri, 20 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674183687
