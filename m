Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A90D365
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 06:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C69C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 06:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674369725;
	bh=LpX9UZWg0t2dzhgxvkTLF5xLIHhsRrWuTwkLipdFtB4=;
	h=To:Subject:From:Date:From;
	b=SrDN4OPbKQktsQTTdRv110tZBwHlEIm/QvkUzrYzuyhQf7kQahXfhB5NeEXqaMCmH
	 myp7nQvm1mBTDEoqqV0BrI507p3DvUxrsqRwZrZ9aSxXKkJnoAOjEnAoZnKTKZLcLV
	 bNdt4XoqnOQQ5hRc2iu0pv/czTTjyVuFHGeuS95xg2rjvkH1vlwzobpUVQCQ02EmUw
	 ELLi1ahGFFso7oFr5GYc5mvuvF7dg222BXs9MyS7wOE3XcGllY38oKfNEW01SErLhM
	 GdLdroqzxnFhaX0c1cXZoxMispKjaaWZmoZk1YkQ9+AZIF8PfKHEyGq61ZEEVhtWzI
	 M5QqbN4ECm3RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C4BC54E94
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 06:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167436972573.10872.9069839361360156858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c056c02910e47f2edd83992d89d47e875df14d140f32d1254c55591640167bc
Date: Sun, 22 Jan 2023 06:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674369725
