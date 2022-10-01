Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5CDF2569
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8ABC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664620853;
	bh=3wa+9u9m9IOjyJg21WtVoKWYvqbLBWVs/8F704hOCYQ=;
	h=To:Subject:From:Date:From;
	b=WIrguw8J+tMKyOFA6MRYPdBp3KGi7hp8N0DFfT8f/lH25EWXxH6BZly6J5W+TKil1
	 IHLd/NE1K/CFYHSxbW9GUV3tTuGqVYAgn9k9tlOfo0qpo4GIyL0nVC5+jEcE2osHjm
	 sbVs5fNnZp7gX/vzoro7rgi85uDrqmFB7v1X9XRUek9fDLBG1YiJeODkqIjmaimH8N
	 X2zbveG4p3RgxuAWWhiODic/c83sO4R4S5zd/nzOQoQRqo1KPu5l1TvRLvalqAOG0b
	 qUcpBYEqNTYTLcJAPf345l8cR+Bhan+j8/YDTkVQq98TTJGoTQJHYr3++eWLPhqhwT
	 LgTjT0m6bIycA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AD2C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166462085333.10842.16740708195637581977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777eb9d67640f5b9d83987c9739ba878f0a1ee115232ac58b8d24a3e6c6ca81a
Date: Sat, 01 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664620853
