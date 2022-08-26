Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB9B4C94
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714AEC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661549452;
	bh=DU0H7AEGPLKcqbAkpl5E5E8Rg05Y816wCaQ3r7EL3MQ=;
	h=To:Subject:From:Date:From;
	b=X5jL0zl+eQssIHaMdSJ9SojM4QXXYRByUkX8gCHFUK232oMZiUli2mnsf3JJWkcE+
	 zTTW9c0YvBua6TMXOye58+aU3HJietZY7IuQthw8vBQs13i1J7M/r+wiqcevI1QvIJ
	 1fh52/b6tk3OD81dwFan9o6CSTP0cLuouZPQfAdHW5gbe4WIRc77bYx8ENuVF9ws4U
	 YrITKQ9vrp3a65/3QoypVS54GFcJdN8rDkUY3wTehMJ9u75F9264b6dzJ8ZMNAh9l7
	 DFA5zCqRJg8ik6pZ8QLvoHBkTy2IYop59iXswcmnMuIDfTl0zxH55dWfkz7raA2lYo
	 8B1ufAkGy8r2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A2BECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154945233.29302.17234279758155227507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7d8bb13123e154601b42002a4bff6ec0b160df138dd831453e28df98e80dad
Date: Fri, 26 Aug 2022 21:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661549452
