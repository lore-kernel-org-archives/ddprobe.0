Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61AB63A0
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F149C433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667498454;
	bh=d+KYojGJ7lIrWk7xKkppQ/jZNTVXZXHpQEj4nJ0veJ8=;
	h=To:Subject:From:Date:From;
	b=RjBcYuiYzRVfhg3AZXnuTEdm2SxS+PIzpxJzVdueTgcQh0J2MDZwvwf6uFN09fUtO
	 ZH+I/RNmRV0nNH7OB368OXEd0/E1nctuIBOdM7smvMr9gK52kWbP1chym4/t6rEQVv
	 z5tDj3xstQSfGuXZz9WUQ5zvUrwQUpMydCL+CYNLql4athFJDP6EH1P2KaBB8wp3Tc
	 R8Do2XT1NiZjBaYW2NvoyTnA93DysWspAuKE6eLuti+FtOQYR4sFpIrZy1gKv15lx6
	 x1gy8VH+fRQSl09vD9aKq6tp0MDACqll/2SrDTHDzIyq7cEp0aNaXu1xCp3RDEFecA
	 P6nyrReml2MPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A1DDC4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166749845435.26049.14304492165129999287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65f7e8d3498c868ee8cb780182bdac0a9519b2c22f2848662b205d55bb8ae9b
Date: Thu, 03 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667498454
