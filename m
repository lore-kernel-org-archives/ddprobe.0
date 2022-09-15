Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFECF4403
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6950FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663242653;
	bh=soDrfT6EWfMac2XEWH5GlhBJB5RDg/oHC1/2cuY+91w=;
	h=To:Subject:From:Date:From;
	b=pibLJyEJlPwkRfyAalnMHMFNcGyQL5JngzLifTM+n1hT3oA4yCLuyGwhonBr4QBy5
	 braShSykyqTWCYWZDtz/s5qZhHn7QiIfqx/5zcMLvrz2B2ZLvgE6MYfIZEhWKqjrL5
	 oP+Vvr5CosM4O/tW8DJimatfQZIhUjhUWV3TK9j+8RQpE6jolfw4/G2juJeynTL+0u
	 4T0upts7l0nvZ6M7T8n+eyxi1VNgYvbN0ZVTHnc70e9jaOJOpQ1Bf7T1aD7QzbL8yC
	 clUeNPz6PatwJkIT+Tf7xVNFiSjJ4wbOgQXu2GLpL4d1dO1oGFEb9fniw03S+E8U1K
	 xNEWYwTkUJrkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DBDAECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166324265331.9212.17712314729020253957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c4c5e0c132be175f5e168ed4a114ad04d16ec3654f07f048bef181328f0181
Date: Thu, 15 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663242653
