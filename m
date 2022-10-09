Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD031865
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7695AC433D7
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665289253;
	bh=xu7mTOPvCnVr6i/tzAYS0B8r4SqLaR/GQKfOsomFArU=;
	h=To:Subject:From:Date:From;
	b=FKdad2IeWXfJcwOZ0KPzzwJ/IB8bzmKyp7Vskpih6CI4L1DZFolysySBEqdaTX3Ur
	 duDJUjtBJI523bxR0RncXsY9k1woNc98JcV2vmnIN7WNXW7gVVUvHzEMQpHKw9f8Ax
	 3GukEhoDk8R/BAfbLWdCO4s8gi5Lfq+Em9ODPL35Brqd7EOeSE/1ummwN9EWKFJYcu
	 Y9F4Dfqs6Av4EVYnZvm3HPgJDU3SueR6Dt2GC/4l2itYd7zokY1B6H9FIL2lUX6w9Y
	 +4xzkQT8/D3oUW9waUol9ZvIHQwzkhyUjTVVyICCNCy3x3wY8ktNVLz3iADsq/tfRr
	 Zwq2iDSEGVWeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D5E7C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166528925334.4738.18180888522303950996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e11c49307e30694b6936c84daad496d62095b6f85c82bc93312cb70da76715
Date: Sun, 09 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665289253
