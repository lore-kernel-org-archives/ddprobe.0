Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B82410E6
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 04:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D1AC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 04:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675397165;
	bh=sNmVP3P/Qozl4JduWzxL8KxQZc1fAi2etcCN0hWBQFM=;
	h=To:Subject:From:Date:From;
	b=Jr/RnsPneqhSaQQzXnNqrDpcNUmVF6z5qqhviwZS7A4FQ9VRts2x4htKJhANW8nzx
	 1RLBorkYUPsZ0deyx1PcgLohMKfe9jdnZ+ecXF+yzSeFeoMxjdCwxpTE/yca9YJN3z
	 xvosaOhebVc94OSpzMs3AQAicDo1BcGnAOhKzkgx/MJ79qdioDd7aMTDf4dLh9vPnS
	 HwTaydQ2sU7dUG/g6LvQ77seaVnLbCIqC+UrSWreL6sCrLnuI2oDyk6F73FjBfTWLa
	 iM2uKaHrlDRwj040vW8aEe6aRTeC0I8X3D1Yd9oxuvVR9QiK+E6SZ5DhKfHlVKOlHQ
	 dwEWcVLHZaYkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2142C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 04:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167539716572.23597.6807327491522456940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472cd4f7c5cd06ee2e9e5050c4a207be8a52f7a64ae9f635c2d73467441a6d9d
Date: Fri, 03 Feb 2023 04:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675397165
