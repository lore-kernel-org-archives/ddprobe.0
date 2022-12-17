Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D548F42
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA26AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671316287;
	bh=e4NhNGKRMYi6u3N2M3wW2qZznrsro5axmsny5KvNwHg=;
	h=To:Subject:From:Date:From;
	b=HN1GWB6LZq91ZYlqMTDtuUgzDGVBJk66GE+XStXwSnT4p/UT05TR8zlHh4TYlNNjl
	 ewQFSpIcaggI0hXgrWx695au5HS0lVnzlpPqYwE4bFzjczPa55575gHhCyAQP2Ycyw
	 2tmYMZnDJHu8vij2BlRxEZvXB1NYRhIhE9rLjnLVxpW3xHDdaZG1q27nla0jXhNBJX
	 wvRnx0klBbitbsm52dQa+GrehXfqEuqHTPD1UiOYVnA8tgnyWupRNVayVhXym4YlwL
	 fyDNIpnZ6G72QUkJQ7vrMwXVbSmcMi/04mEnRV6wCquxkZuw9O/L5PkxULYlqHJenm
	 kryXtUPZo9ZXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E84CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167131628760.3069.1379851631033400553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81a7f7e0be096fb7cde491db4eb72d801ef67a0922b2e7d7a8abc1a48cb54c9
Date: Sat, 17 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671316287
