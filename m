Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1363418EC6
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELQyNqIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E375C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702678696;
	bh=q5QzWnzC1ndwckV3sQs3JlKdAR8WQQT/yxuiQxDJH/g=;
	h=To:Subject:From:Date:From;
	b=ELQyNqIZ7/tPpuK/4lpi+arpnDryabFRb2hljYrqew0pO4LYy5rref3OlSJbgrRyb
	 6DIdE4SHw+oWAEhqNxHIv3s1sOJa5f+Hhs38xuUB1k86MP7cuS8m42dy6GYFGNdS5P
	 pDP/v1S6Xs0IC0UuaflvFHa0aXeYzE4H9i0qPinPn30sMLXEiL425GJeSjKGgdn6rA
	 b9ur9snyTSyT20q/W1wdeyDd7pfPp2kMTwyQT42cNgACHJQL+b4o1WoOyVvJoNzq89
	 3XozECm0z7RGjXb43869Q6llBjBAS6LbOR/hKuT1t0pAN7+OwYhcqZ6z8Vivyi8vYW
	 mdiwLc2AlR+KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6370EC35274
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170267869637.7098.6752486363296986569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c179674cadebc077d1e72dca811dadce976effddc9b2d92586ceb7e61ba0da
Date: Fri, 15 Dec 2023 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702678696
