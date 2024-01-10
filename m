Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2336A40C07
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHrUD+lD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E1D2C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704883096;
	bh=uCavWTahW3ZPzVbUmeVSgLMW2i1wJ7XyUgyLr7qNx70=;
	h=To:Subject:From:Date:From;
	b=WHrUD+lDMnmeCCBO+m9M6Be9L5+SYgI/4Xz5rV6E6rGx+vXrFLB7INxMp6ZgZPs8b
	 +K1qjyrl464jo7wxnho+V9H2g1qtbdccAwMYVD3NmFWDzQfN+uDRg5tVKdYnMhEltm
	 uCfiTj0Xn6vpIn9ZDM3/FV5bcKChQmmV6NkqpHJXKx8qJQqk/V5JgbNp3g33b/f7Jj
	 lrYL65Ajrd+YOJTB3JHZXi1vNd9Qkpb9CVWtVIZIdQnBMMCm54IaG59oN3XAsAM9SI
	 8U2AgjfT+6V4cqlc8qq9m89v0B9RLE0WwS9c1nr/wpeo4y/Ml+V8WBRbdGtGYnYhzm
	 DVtgmYrdLWjIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EDBBC47074
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170488309642.19855.14096747368188330743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87db12a3997770787dd89f2697cd287f3be078f1f3b57d955f3e8fd31e27d22b
Date: Wed, 10 Jan 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704883096
