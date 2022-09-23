Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C888415AC
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B771C433D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663914653;
	bh=gbLpdwZsC+uDvm+N84l3ZthpgX02OkmMqmGHdP0PEQA=;
	h=To:Subject:From:Date:From;
	b=DN6/VgepUg90OWfiLBaGmM9TVgDw7qR3t8zOZDQ6j8z9ZFTEa1zdFAyOFfTaZ1fyr
	 RSotBdyrsqXG3chs2dG0HKba1XoMjKoW2GJq0J7JmBi3VCa020fVZDVeWMNQqcfprQ
	 mE+SO1tIFIlZU5Q/zANhQ0lcYEyqByuLPXKpFcF7xQw0dX6/Ztopp7hoo4sNbPQQn1
	 jPjcVquQy8uTNC27HkXq7tgwNP+v3T46F3y/GXEAtHdJn3naXw85YU+DK3lV0JNj+G
	 N30JMfkK0xh2x1gD6NLuZhvanZX+wz0tdKpTKGZyMkL2485PhLKj+OmwsP6tOD+Our
	 tGWd5wTOnvimA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B8DECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391465334.31682.17933964989363650034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68953c5f87eb00fb4c220671f0699b182ca722d680de3c3959c2a64da2a14ed7
Date: Fri, 23 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663914653
