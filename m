Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4BFD63F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 816DAC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671256287;
	bh=xVWJzshN4yTqSx5aLw1E3WbiB4jYe1irtmJkQwL32AI=;
	h=To:Subject:From:Date:From;
	b=lFfklgeJstnFep7ZxNuCw2ztOsU7Vf3Jj9wtbwTrBI9nV7tzDgQ6MHBOLpuz7W0JS
	 L2NHbSId0VgFq83GCnnJY3CLMw1ZtIJD1rr64nzozO+cjNkilG8zHXkOY4RjS2sTxD
	 0HN6HvO7l/e5z8QfvRv592EvexHbb1yykpS/knX1JeQOf7tbpKOVSkXdYCAdGxXrry
	 tmfh6PKvCBVam3zwor2H7K0huknPq7u6+hqPqXStj1G7vbudpqXY4WiN2X2UIL2vxQ
	 agcZh8j3mkrA1V+POggJFv62EA2VgsPaNjiHXNhbNVIWzXYf3Y8YeS/vg2bFcE1NkE
	 PquTz3ptRN96Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 674E6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167125628738.22931.9443431235694870069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0745bb8d8decf621ca982caf919ac68dfd8636522bc5bf2d0c68ebafa2a05311
Date: Sat, 17 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671256287
