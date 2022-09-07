Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B714D89D4
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6999EC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662588053;
	bh=NzMVZRbma1KKx7xrWKv1cj/GzRnqOvyfGpwP9QZAse4=;
	h=To:Subject:From:Date:From;
	b=Nt/4AbE9dE6r/tN1SHU8lamyfLAu+US/5AG8/PL5ZJaW2J2CxpOA08AV3PcMF+0ha
	 Aw57xAwNcQt8SRtT6ZPR4f8ELiJ6qzMN97CuWJ8u3AX2S8TLw5c5GHxSpLqBJU478f
	 1QXGTS9NqPZfUxzsyY5kWNKNc46/xbLJ70dQ6IH6vIxzSjqY7bq2B6cYR9b1F8mMDj
	 Exe30VIdbuNaSc5YESdWa4g3671spY5yg3R/paCaVy4ecxyJ2gve9i4Rg8P2I38ZlL
	 zFhor4yVhMzxRg8DdIRR3XqhmMd8aGKuwK54NcTJNUu0ZsS2I4zZVqQzDILpLi38E3
	 rPxnVqV610IZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E846C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166258805331.5122.1426188595166134706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc07e7e25764f0b77c5ed80ab9d28c67bce8c59067c8b085d709b8dcb61e8d4
Date: Wed, 07 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662588053
