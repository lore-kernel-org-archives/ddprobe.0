Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD6E379
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 02:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D737EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 02:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682045825;
	bh=xO7S7eZy1MXcevKAmBqqs+g2WteobYXZAna7M19v4JE=;
	h=To:Subject:From:Date:From;
	b=SE7vhBeSS6bLCwX7Oe3N7QgL7AX5ve12P+5dfySQI4PVaP9EjFelwu5o/t1h7/tqX
	 C0B2Q/c4qDHOLW4onD8D8Wqg5tH5Z9hszPIxnnFrasEF8Z4aOXc6ovaDFbdGXsyEIt
	 WqANolSti0PStaFOjRPRq0C5VOUwnx2cprGwxbBjwe0FYqkdYT8rta7E4lJrS8ED2b
	 x38vkLzcRCn/5ot5dbVWxH3WnRRn/9SlGJa2d5D7gfOYr5J+iuESAdj7bY6n1DjNk5
	 93PbGSPeXRaa/0CYZkF6/LlfLJDvy9FbJJt6HmZ/iJ17KrHf0yVADx2y+SEwRLcv/M
	 OTj/lT2jFTA/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFF3C7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 02:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168204582576.2610.1385444451519499497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c303492b9e375f9c1fd9fa523fb070a6c6aa531f24d14589d501e54ac60bcc4a
Date: Fri, 21 Apr 2023 02:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682045825
