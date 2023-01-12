Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6F18F44
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80754C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673560287;
	bh=rjNZ55wfk3WgEYx3Js9hcLTUL/74EPo1ZiGswT9KyqI=;
	h=To:Subject:From:Date:From;
	b=jlq6ccQje2rfpiuKACvK78kL/85VHbucp1Qi+GtjJjGhlZnc6T3C5PihnjNAhq7Xs
	 GBFpGI73cKIpN6fQugruab5F0eSLGi/rs2b16qHhzTiP3xf732yVvVh1CEkATqEDgL
	 ZPW/hlVvz2pkFUFtXinxsIv5dcEMN0BjMYquP0LxrnCLjtVQSn14QUXYnvx0HdJEfM
	 WsL/Hq3VjuDakRbNwboIa6s2uQvzMRdc1X35k52iTcc2TuCZUdZk5yajKI8Uyfew+H
	 3BmsobU5UdN+/gEffMrp3J7+L1k2bt0hK7xfdvNMVAZPDB0IV/g6fzVjq8ZROeFztT
	 UpOQLpfkw5VFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64934C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167356028740.14196.7303944519661667670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf92681a4047d5a64554f776ae85ad22bc3a7bcabab8a7164954b0bcf106f745
Date: Thu, 12 Jan 2023 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673560287
