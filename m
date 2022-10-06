Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FC22C9D
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75308C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665070253;
	bh=KMjm6hLYTzkroA1sQmP2IxaG5qO9YMLs9JaXB/uv0+Y=;
	h=To:Subject:From:Date:From;
	b=VSxaZLixRFeWEBrulCxZzTR10eSBx1KN9Klm6s1oqFpnpu4JYUB2PfDMkHiskB4ND
	 +Opt7BQdUd+lgA8jdCN07tMCIg8M3Y7RXe9uQzLWwnNurfCN0kMc9Q4UkCQop+anfs
	 7umbMBJWqQSDC7KNGZMKTt2/laofxkvtLl7ZvQpZDq/o9uu+Lp8HX5pt8aEcvV7hg6
	 m1s/AQwaK71HJtpM7d0BTm4tHxF8cvhSgdGn5l7ejWeiM+D4eIOXq2mZ9wHTP0mF3D
	 UHeRqOW5SgKnXQoxdPT5s3gklgY4L6BnSlY2VNUa/TsDkSE+OBlJRe3/jkhB2zb7ox
	 wzJqml3C+VnIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA2DC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166507025338.13780.9864991942890181121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8a4fa70877c5396f86d3ae374b483b76f4071f3612106ff5e483683343e887
Date: Thu, 06 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665070253
