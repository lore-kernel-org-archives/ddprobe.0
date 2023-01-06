Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A8F7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86056C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672973487;
	bh=YBf3KwuNCn4Xh7Sc6tmdAw6QDBcAaWeum8WFDj2ht2g=;
	h=To:Subject:From:Date:From;
	b=clO8s8z/jouvzq+sxeNJACKpQqL/t/6+4mRoyJJ/w9RquwLRZQwAc/icjCcDeS25p
	 VxGZOqaEi7GkNotVpYbcAWfuIMuy3JJTSXqzPm6+XG4ej3nPk0Z8Voc25YZNFTnkrJ
	 XSP010L5412ZLppCZWBQtANFn5ZbSwnp0DpsWIMfeDbzGkh24q7SGcF7M1gKOzOcqD
	 vo/viYnucle/nYA3X+AM7IxLa2YuxshwInmOs0zWDgaJ/UlX5ydB2C6+wx8IGymElM
	 SM5m1vdFj27rR2MOQNYxwVrZr0jspU5nC8lecD+d6WW/u3id6hhV2MMtBOvqV9W+bJ
	 bsQSoJERfex7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB21C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297348741.9831.459768847530658279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15694312c7d02ee0db77df0bcfe6e37df97405acc53d046667a21fb43c68eb6
Date: Fri, 06 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672973487
