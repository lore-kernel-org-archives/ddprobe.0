Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6BB33D1
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 20:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0719AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 20:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682109546;
	bh=yHCjvUsENPb9zEYi4zE2VU7PXEk+woKk5VkpQnTfjdI=;
	h=To:Subject:From:Date:From;
	b=SXXzuNLzI4x3cWAge7PCLKtv18JT+AwF8YUon1b4qRe8pymiO3n36dJUhIvjanwUr
	 fBcnluYvOKK9kWnHOABRyj18R6QZDEwchNwwu6D4CUQ0THvE7HeDQM1kLhpz0irpK0
	 GawveSUw/zk4BQAE1VYONm0hOgyfpYpVxlg0iFtA0uNDycRBs18B43TYE0AgcX5gvU
	 1/fKd4OrbhyyL/U9Wot949U5oAABmoLjxCcqT6rO/QY6RN4WBq4Fc6QkeXOukJKdEx
	 T3SYUqeoIxCcNm2H3rFUpbBz3dZEyCj2Y6NybB5qGYoe35m1Ydq+P9XDk3b+ctF58k
	 aGR7V5nhvc9EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE0D1C7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 20:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168210954587.11072.17207341521925552169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec59961b20ffdf152ef64a22c55081a7d87360e393b8ddc406b98899c59d691
Date: Fri, 21 Apr 2023 20:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682109545
