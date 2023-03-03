Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD8A8F6E
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 23:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBD6C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 23:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677887825;
	bh=n/PNC8PHwcfhjAXo8y3V4ZmIkZKIRC/VkRIxsFUGzZE=;
	h=To:Subject:From:Date:From;
	b=WwnL05j1QjfjybUq9ynD8kC81FlSnziiK+3z/ITGGqTJKida2VdYcyTMOeJOivgua
	 a2NmvXuO6arAfZezDp0fidFJm3BbT3s/ltuEa+8inDiaOg0wWcWMVWe86hK4swtmz9
	 eZMCBrRD2nc9I0y03psqW14e9w7uP/N+IPM69788N5Z7cDwLpYPLNTWaroYh+flv/y
	 EDaAlgClDXJKRyVzktzX/rlSj3Nn1loHC6Lvn8W6nFYPQJ4AjsjY/NDfa/iyYPHX8V
	 y8LOR0Qhun+qn0uEZ5x9u9K+2eJRUbqUhF5Iit2j9TFRHaJnio5bD4GD0+FuMb1p73
	 VGYYo5Dh1dQXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0419C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 23:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167788782577.8115.14119246286846875362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59536161a5f7d4017b5b567b4a7d1464b855072eb3f7a4a10ecdc51a6df839c9
Date: Fri, 03 Mar 2023 23:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677887825
